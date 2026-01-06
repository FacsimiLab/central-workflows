#!/bin/bash
set -euo pipefail

REPO_ROOT=$(git rev-parse --show-toplevel)
cd "$REPO_ROOT"

WT_PATH=worktree/log
BRANCH=log
REMOTE=origin

mkdir -p "$WT_PATH"

CURRENT_BRANCH_SHA=$(git rev-parse --short HEAD)
# echo "Current branch SHA: ${CURRENT_BRANCH_SHA}" # Debugging line

if git ls-remote --exit-code --heads "$REMOTE" "$BRANCH"; then

  echo "[INFO] Existing `$BRANCH` branch found — fetching CHANGELOG.md"
  d
  git worktree add \
    --track \
    -b "$BRANCH" \
    "$WT_PATH" \
    "$REMOTE/$BRANCH"

else
  # Create an orphaned worktree branch called "log"
  echo "[INFO] No existing '$BRANCH' branch found — creating new orphaned branch"

  git worktree add \
    --orphan \
    -b "$BRANCH" \
    "$WT_PATH"

fi

# Start a subshell to work within the worktree
(
  cd "$WT_PATH"
  echo "Changed directory to the worktree at $(pwd)"

  cp "$REPO_ROOT/CHANGELOG.md" CHANGELOG.md 2>/dev/null || echo "Could not copy existing CHANGELOG.md"

  printf "\n\n"

  # Stage and commit the (possibly new) CHANGELOG.md
  git add CHANGELOG.md || true
  git commit --allow-empty \
    -m "ci(semantic-release): initialize CHANGELOG.md at ${CURRENT_BRANCH_SHA:-unknown}"

)


# List all worktrees
printf "\n\n"
echo "Current Git worktrees:"
git worktree list -v

printf "\n\n"
echo "[INFO] Pushing '$BRANCH' branch to remote '$REMOTE'"
# Push the new or updated branch to the remote
git push -u "$REMOTE" "$BRANCH"

echo "[INFO] Updated the '$BRANCH' branch on remote '$REMOTE'."