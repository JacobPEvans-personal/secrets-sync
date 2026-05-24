# Configuration

## Config File

```yaml
secrets:
  - name: SECRET_NAME
    repositories:
      - repo-1        # Without owner prefix
      - __SELF__      # Profile repo
```

## Key Points

- Repo names without owner prefix (added by workflow)
- `__SELF__` resolves to profile repo
- Sort repos alphabetically for maintainability
- Comments supported
- `source:` (optional) — name of the GitHub Actions secret (or variable, for entries under `variables:`)
  on this repo to read the value from. Defaults to the value of the `name` field.
  Use when the destination name on target repos differs from the source name stored here
  (e.g., a JACOBPEVANS-prefixed source published under a generic canonical alias).

## Two-tier distribution

This repo handles Tier 1 (broadly-shared secrets distributed via the
matrix workflow). Tier 2 (infrastructure-specific secrets fetched at
workflow runtime via `dopplerhq/secrets-fetch-action`) is intentionally
out of scope here — those values never enter GitHub Actions secrets.

For the full narrative on the two-tier model, decision table, and where
each kind of secret should live, see
**[Security · secrets-sync](https://docs.jacobpevans.com/security/secrets-sync)**
and **[Security · How it fits together](https://docs.jacobpevans.com/security/how-it-fits-together)**.

### To add a new infra repo to Tier 2

1. Add the repo to the `_infra_repos` anchor in `secrets-config.yml` and
   push — secrets-sync distributes `GH_ACTION_DOPPLER_IAC_CONF_MGMT`
   automatically.
2. Add the repo to the fine-grained PAT's repository access list (see
   `TROUBLESHOOTING.md`).
3. Add a `dopplerhq/secrets-fetch-action` step to the repo's workflow.

**Do NOT** add `iac-conf-mgmt/prd` secrets directly to `secrets-config.yml`.
This would copy values from their source, creating a second source of truth
that can drift — see [Golden law #5](https://docs.jacobpevans.com/security/golden-laws#5-one-source-of-truth-per-secret).

## Adding a Tier 1 Secret

1. Edit `secrets-config.yml`
2. `gh secret set SECRET_NAME --repo <user>/secrets-sync`
3. Push

## Removing

Edit config and push. To fully remove:

```bash
gh secret remove SECRET_NAME --repo <user>/target-repo
```

## Variables

GitHub Actions variables (non-sensitive config values) are supported alongside secrets.

### Config format

```yaml
variables:
  - name: VARIABLE_NAME
    # Description of what this variable is for
    repositories:
      - repo-1
      - repo-2
```

Same conventions as secrets: no owner prefix, `__SELF__` supported, alphabetical ordering.

### Adding a variable

1. Edit `secrets-config.yml`
2. Set the variable on the secrets-sync repo itself.
   - **Without `source:` alias**: use the `name:` value —
     `gh variable set VARIABLE_NAME --repo <user>/secrets-sync --body "value"`
   - **With `source:` alias**: use the `source:` value, not `name:` — the workflow
     reads from `source:` on this repo and distributes under `name:` on targets:
     `gh variable set SOURCE_NAME --repo <user>/secrets-sync --body "value"`
3. Push

Variable values are stored on the secrets-sync repo itself — never as text in the config file.
The workflow reads them at runtime and pushes to target repos under the `name:` key.

### Removing a variable

Edit config and push. To fully remove from a target repo:

```bash
gh variable delete VARIABLE_NAME --repo <user>/target-repo
```
