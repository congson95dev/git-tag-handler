#!/bin/bash

# List of repository folders
PREFIX_FOLDER="prefix-folder"
REPO_FOLDERS=("repo-1" "repo-2")

# Tag and message
TAG="v1.0.0"
MESSAGE="v1.0.0"

for REPO in "${REPO_FOLDERS[@]}"; do
    echo "Deleting tag "$TAG" on $REPO..."
    (
        cd "../" &&
        cd "$PREFIX_FOLDER/$REPO" &&
        git fetch &&
        git checkout main &&
        git push --delete origin "$TAG" &&
        git tag -d "$TAG" &&
        cd "../"
    )
    if [ $? -ne 0 ]; then
        echo "Error processing $REPO. Skipping to next repository."
    fi
done
