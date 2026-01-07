#!/bin/bash
set -euo pipefail

REPO_ROOT=$(git rev-parse --show-toplevel)


WT_PATH=worktree/log
BRANCH=log
REMOTE=origin
LOG_FILE=${LOG_FILE:-"$REPO_ROOT/.github/log/log-worktree.log"}
cd "$REPO_ROOT"

. ./scripts/logger/bash-logger.sh
create_log_file "$LOG_FILE"

mkdir -p "$WT_PATH"

CURRENT_BRANCH_SHA=$(git rev-parse --short HEAD)
# echo "Current branch SHA: ${CURRENT_BRANCH_SHA}" # Debugging line

if git ls-remote --exit-code --heads "$REMOTE" "$BRANCH"; then

  logger INFO "Existing $BRANCH branch found — fetching CHANGELOG.md"

  if [ -d "$WT_PATH" ] && git -C "$WT_PATH" rev-parse --is-inside-work-tree &>/dev/null; then
    logger INFO "Worktree at '$WT_PATH' already exists."
  else
    logger INFO "Creating worktree at '$WT_PATH'."
    
    git worktree add \
    "$BRANCH" \
    "$WT_PATH" \
    --track \
    "$REMOTE/$BRANCH" || logger INFO "Worktree for '$BRANCH' already exists."
  fi


  logger INFO "Updating worktree branch '$BRANCH' from remote '$REMOTE/$BRANCH'"
  (cd "$WT_PATH"
   git checkout "$BRANCH"
   git fetch ${REMOTE}
   git merge "$REMOTE/$BRANCH" "$BRANCH" -m "ci: updated the log branch from $REMOTE/$BRANCH"
  )


else
  # Create an orphaned worktree branch called "log"
  logger INFO "No existing '$BRANCH' branch found — creating new orphaned branch"

  git worktree add \
    --orphan \
    -b "$BRANCH" \
    "$WT_PATH"

fi

# Start a subshell to work within the worktree
(
  cd "$WT_PATH"
  logger INFO "Changed directory to the worktree at $(pwd)"

  cp "$REPO_ROOT/CHANGELOG.md" CHANGELOG.md 2>/dev/null || logger WARN "Could not copy existing CHANGELOG.md"

  printf "\n\n"

  # Stage and commit the (possibly new) CHANGELOG.md
  git add CHANGELOG.md || true
  git commit --allow-empty \
    -m "ci(semantic-release): updated CHANGELOG.md at ${CURRENT_BRANCH_SHA:-unknown}"

)


# List all worktrees
printf "\n\n"
logger INFO "Current Git worktrees:"
git worktree list -v

printf "\n\n"
logger INFO "Pushing '$BRANCH' branch to remote '$REMOTE'"
# Push the new or updated branch to the remote
git push -u "$REMOTE" "$BRANCH"

logger INFO "Updated the '$BRANCH' branch on remote '$REMOTE'."