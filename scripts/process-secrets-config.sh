#!/usr/bin/env bash
set -euo pipefail

PROFILE_REPO="$OWNER"

ALL_REPOS=$(yq eval -o=json '.secrets[].repositories[]' secrets-config.yml \
  | jq -r '.' | sort -u)
INACCESSIBLE_COUNT=0
for repo in $ALL_REPOS; do
  if [ "$repo" = "__SELF__" ]; then
    full_name="$OWNER/$PROFILE_REPO"
  else
    full_name="$OWNER/$repo"
  fi
  if ! gh api "repos/$full_name/actions/secrets" --silent 2>/dev/null; then
    echo "::warning::PAT cannot access secrets API for: $full_name"
    INACCESSIBLE_COUNT=$((INACCESSIBLE_COUNT + 1))
  fi
done

VAR_REPOS=$(yq eval -o=json '(.variables // [])[].repositories[]' secrets-config.yml \
  | jq -r '.' | sort -u)
for repo in $VAR_REPOS; do
  if [ "$repo" = "__SELF__" ]; then
    full_name="$OWNER/$PROFILE_REPO"
  else
    full_name="$OWNER/$repo"
  fi
  if ! gh api "repos/$full_name/actions/variables" --silent 2>/dev/null; then
    echo "::warning::PAT cannot access variables API for: $full_name"
    INACCESSIBLE_COUNT=$((INACCESSIBLE_COUNT + 1))
  fi
done

if [ "$INACCESSIBLE_COUNT" -gt 0 ]; then
  echo "::error::$INACCESSIBLE_COUNT repo(s) inaccessible to PAT"
  echo "::error::Add missing repos to the PAT's repository access list"
  exit 1
fi

PROCESSED=$(yq eval -o=json '.secrets' secrets-config.yml | jq -c \
  --arg owner "$OWNER" \
  --arg profile "$PROFILE_REPO" \
  'map({
    name: (if (.source != null and .source != "") then .source else .name end),
    dest: .name,
    repositories: .repositories,
    repositories_formatted: (
      .repositories
      | map(if . == "__SELF__" then ($owner + "/" + $profile) else ($owner + "/" + .) end)
      | join("\n")
    )
  })')

echo "secrets=$PROCESSED" >> "$GITHUB_OUTPUT"

VARS_PROCESSED=$(yq eval -o=json '.variables // []' secrets-config.yml | jq -c \
  --arg owner "$OWNER" \
  --arg profile "$PROFILE_REPO" \
  'map({
    name: .name,
    source_name: (if .source != null and .source != "" then .source else .name end),
    repositories: .repositories,
    repositories_formatted: (
      .repositories
      | map(if . == "__SELF__" then ($owner + "/" + $profile) else ($owner + "/" + .) end)
      | join("\n")
    )
  })')

echo "variables=$VARS_PROCESSED" >> "$GITHUB_OUTPUT"
