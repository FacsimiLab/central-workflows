#!/usr/bin/env bash
set -euo pipefail

SITE_DIR="${1:-_site}"
REPO_ROOT=$(git rev-parse --show-toplevel 2>/dev/null)
BRANCH="gh-pages"
WORKTREE_DIR="worktree/$BRANCH"



# ensure _manuscript exists
if [ ! -d $SITE_DIR ]; then
  echo "$SITE_DIR directory not found" >&2
  exit 1
fi

# remove stale worktree if exists
if [ -d "$WORKTREE_DIR" ]; then
  echo "Removing stale worktree at $WORKTREE_DIR"
  git worktree remove -f "$WORKTREE_DIR"
fi

# fetch latest gh-pages from origin
git fetch origin "$BRANCH"

# create new worktree pointing exactly at origin/gh-pages
git worktree add "$WORKTREE_DIR" "origin/$BRANCH"

# go into the worktree
cd "$WORKTREE_DIR"

# reset the worktree branch to match remote exactly
git switch -C "$BRANCH" "origin/$BRANCH"
git reset --hard
git clean -fdx

# copy manuscript contents
cp -a ../../$SITE_DIR/. .

# commit changes
git add -A
if ! git commit -S -m "ci(quarto): update gh-pages"; then
  git commit --no-gpg-sign -m "ci(quarto): update gh-pages"
fi

# push to origin
git push origin "$BRANCH"

echo "gh-pages updated successfully."

# Cleanup
cd $REPO_ROOT
git worktree remove -f "$WORKTREE_DIR"
echo "Cleaned up worktree at $WORKTREE_DIR"

rm -rf "$WORKTREE_DIR" || echo "Worktree directory $WORKTREE_DIR already removed"
echo "Removed worktree directory $WORKTREE_DIR"

git worktree prune || true
echo "Pruned git worktrees"

echo "Static site deployment completed successfully."
#--------------------------------------------------------------------------------------