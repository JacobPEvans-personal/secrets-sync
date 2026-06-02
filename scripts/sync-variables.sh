#!/usr/bin/env bash
set -euo pipefail

echo "$VARIABLES_JSON" | jq -c '.[]' | while read -r entry; do
  VAR_NAME=$(echo "$entry" | jq -r '.name')
  SOURCE_NAME=$(echo "$entry" | jq -r '.source_name')

  VAR_VALUE=$(gh variable get "$SOURCE_NAME" --repo "$SELF_REPO" 2>/dev/null) || {
    echo "::error::Source variable $SOURCE_NAME not set on $SELF_REPO — run: gh variable set $SOURCE_NAME --repo $SELF_REPO --body \"example-value\""
    exit 1
  }

  while IFS= read -r target_repo; do
    [ -z "$target_repo" ] && continue
    if [ "$DRY_RUN" = "true" ]; then
      echo "[DRY RUN] Would set $VAR_NAME (from source: $SOURCE_NAME) on $target_repo"
    else
      gh variable set "$VAR_NAME" --repo "$target_repo" --body "$VAR_VALUE"
      echo "Set $VAR_NAME (from source: $SOURCE_NAME) on $target_repo"
    fi
  done <<< "$(echo "$entry" | jq -r '.repositories_formatted')"
done
