# Security

The architecture narrative for this repo — Tier 1 vs Tier 2 distribution,
the boundary between `secrets-sync` and `dopplerhq/secrets-fetch-action`,
Doppler / GitHub Actions topology, and the cross-tool flow diagrams —
lives on the public docs site:

- **[Security · secrets-sync](https://docs.jacobpevans.com/security/secrets-sync)**
  — workflow internals diagram, repo-grouping anchors, rotation cadence.
- **[Security · How it fits together](https://docs.jacobpevans.com/security/how-it-fits-together)**
  — CI / local-dev / AI-session secret flows.
- **[Security · Golden laws](https://docs.jacobpevans.com/security/golden-laws)**
  — the 15 non-negotiable rules that govern this repo (notably #5 single
  source of truth, #6 time-bound credentials, #7 fail closed, #9 audit trail).

Everything below is the repo-specific operational runbook. The narrative
above is the source of truth for the architecture.

## Branch protection (required)

Enable branch protection on `main` before production use. Without it,
anyone with write access can modify config and trigger syncs.

Settings → Branches → Add rule:

- Pattern: `main`
- Require PR reviews
- Require approvals: 1

## CODEOWNERS

```text
/secrets-config.yml @your-username
/.github/workflows/sync-secrets.yml @your-username
```

## PAT rotation

The `GH_PAT_SECRETS_SYNC_ACTION` token rotates every **90 days**, aligned
with GitHub's fine-grained PAT default expiry. Same cadence for any Doppler
service token (e.g. `GH_ACTION_DOPPLER_IAC_CONF_MGMT`) that this workflow
distributes.

Rotation steps:

1. Mint a new fine-grained PAT per [`SETUP.md`](./SETUP.md) (Secrets: R/W,
   Variables: R/W, Metadata: R/O, Codespaces secrets: R/W and Dependabot
   secrets: R/W if syncing to those scopes, repos: the explicit allowlist).
2. `gh secret set GH_PAT_SECRETS_SYNC_ACTION --repo <user>/secrets-sync`
   with the new value.
3. Trigger the workflow with
   `gh workflow run sync-secrets.yml --repo <user>/secrets-sync -f dry_run=true`
   to verify auth.
4. Revoke the old PAT in GitHub settings.

## Limitations

This repo does **not** protect against:

- Compromised GitHub account
- Malicious collaborators with write access
- Workflow log exposure (mask values downstream)
- Secret values in git history (rotate anything that ever appeared in a commit)

For each of these, the controls live elsewhere — see
[Golden law #2](https://docs.jacobpevans.com/security/golden-laws#2-ai-tools-cannot-view-protected-secret-values),
[#3](https://docs.jacobpevans.com/security/golden-laws#3-human-approval-gates-every-potentially-destructive-action),
and [#14](https://docs.jacobpevans.com/security/golden-laws#14-rotate-on-suspicion-not-just-schedule).
