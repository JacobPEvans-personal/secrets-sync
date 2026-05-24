# Changelog

## [0.16.0](https://github.com/JacobPEvans/secrets-sync/compare/v0.15.0...v0.16.0) (2026-05-24)


### Features

* add docs to secret distribution anchors ([#85](https://github.com/JacobPEvans/secrets-sync/issues/85)) ([b71e5a2](https://github.com/JacobPEvans/secrets-sync/commit/b71e5a27c387cd9d162df7278cc654b92cef0e0a))

## [0.15.0](https://github.com/JacobPEvans/secrets-sync/compare/v0.14.0...v0.15.0) (2026-05-15)


### Features

* **config:** distribute jacobpevans-claude App creds to all github_app_repos ([#82](https://github.com/JacobPEvans/secrets-sync/issues/82)) ([3ca06b3](https://github.com/JacobPEvans/secrets-sync/commit/3ca06b34b88d542092e5609497b9ccc4988339bf))

## [0.14.0](https://github.com/JacobPEvans/secrets-sync/compare/v0.13.0...v0.14.0) (2026-05-13)


### Features

* **sync:** distribute missing secrets and healthcheck variables ([#79](https://github.com/JacobPEvans/secrets-sync/issues/79)) ([602d0bd](https://github.com/JacobPEvans/secrets-sync/commit/602d0bd04f5f5fccf85df53ccd0d3a52bf6f5005))

## [0.13.0](https://github.com/JacobPEvans/secrets-sync/compare/v0.12.0...v0.13.0) (2026-05-03)

### Features

* add mlx-benchmarks to secret distribution ([#71](https://github.com/JacobPEvans/secrets-sync/issues/71)) ([67c80c1](https://github.com/JacobPEvans/secrets-sync/commit/67c80c1d6d69919acf12606f3614526fb2015271))
* distribute jacobpevans-claude App credentials ([#76](https://github.com/JacobPEvans/secrets-sync/issues/76)) ([10678f9](https://github.com/JacobPEvans/secrets-sync/commit/10678f95222e246c42db4922006d499d8e6b9b98))
* move non-sensitive secrets to variables ([#70](https://github.com/JacobPEvans/secrets-sync/issues/70)) ([5688fe9](https://github.com/JacobPEvans/secrets-sync/commit/5688fe9730845f8220a6c77fa4750a3d1cece46f))
* sync HF_TOKEN_WRITE_ALL to mlx-benchmarks as HF_TOKEN ([#73](https://github.com/JacobPEvans/secrets-sync/issues/73)) ([fb6ab7a](https://github.com/JacobPEvans/secrets-sync/commit/fb6ab7a1d5dc33e849d64b00d312a4fd2ec8e3a4))
* **sync:** add source rename for variables + migrate App credentials ([8eab278](https://github.com/JacobPEvans/secrets-sync/commit/8eab278a5b0312bbb13c51cbc89046916dd32995))

### Bug Fixes

* **ci:** remove deprecated GH_ACTION_JACOBPEVANS_APP_ID from workflow secrets ([#75](https://github.com/JacobPEvans/secrets-sync/issues/75)) ([5d4581e](https://github.com/JacobPEvans/secrets-sync/commit/5d4581ec3863f1e9c7686c71dccc0fb760829b9f))

## [0.12.0](https://github.com/JacobPEvans/secrets-sync/compare/v0.11.0...v0.12.0) (2026-04-18)

### Features

* add AI_MODEL_FREE and AI_MODEL_MAX variables ([#68](https://github.com/JacobPEvans/secrets-sync/issues/68)) ([5bf7ad9](https://github.com/JacobPEvans/secrets-sync/commit/5bf7ad94b5dcca3c3b28077df88005eeb982c84b))

## [0.11.0](https://github.com/JacobPEvans/secrets-sync/compare/v0.10.0...v0.11.0) (2026-04-18)

### Features

* add AI model variables for model config ([#66](https://github.com/JacobPEvans/secrets-sync/issues/66)) ([0d7b15c](https://github.com/JacobPEvans/secrets-sync/commit/0d7b15cf58404c2a8e634d06b6a093acf941e36d))

## [0.10.0](https://github.com/JacobPEvans/secrets-sync/compare/v0.9.1...v0.10.0) (2026-04-18)

### Features

* add GitHub Actions variable sync support ([24fcc13](https://github.com/JacobPEvans/secrets-sync/commit/24fcc13afe9b4864562aba808fc13fc625e39812))

## [0.9.1](https://github.com/JacobPEvans/secrets-sync/compare/v0.8.0...v0.9.1) (2026-04-13)

### Bug Fixes

* **gh-aw:** recompile workflows with v0.68.1 ([0fdb4b8](https://github.com/JacobPEvans/secrets-sync/commit/0fdb4b8d731198e98399647f2534a6fedc0cfc0b))

## [0.8.0](https://github.com/JacobPEvans/secrets-sync/compare/v0.7.1...v0.8.0) (2026-04-10)

### Features

* **config:** add terraform-runs-on to Tier 2 infra repos ([#44](https://github.com/JacobPEvans/secrets-sync/issues/44)) ([c4de934](https://github.com/JacobPEvans/secrets-sync/commit/c4de934ed3b2674069f9f34e54a90ced20260ef7))

## [0.7.1](https://github.com/JacobPEvans/secrets-sync/compare/v0.7.0...v0.7.1) (2026-04-06)

### Bug Fixes

* remove CLAUDE_CODE_OAUTH_TOKEN from secret distribution ([#42](https://github.com/JacobPEvans/secrets-sync/issues/42)) ([6b3fdce](https://github.com/JacobPEvans/secrets-sync/commit/6b3fdce926871ebe94d80b0f905c0d857f19b4b3))

## [0.7.0](https://github.com/JacobPEvans/secrets-sync/compare/v0.6.4...v0.7.0) (2026-03-26)

### Features

* add OpenRouter API key distribution and variable sync support ([#40](https://github.com/JacobPEvans/secrets-sync/issues/40)) ([0ce8a34](https://github.com/JacobPEvans/secrets-sync/commit/0ce8a343275345933ac20e7d33ce465a94e40b0b))

## [0.6.4](https://github.com/JacobPEvans/secrets-sync/compare/v0.6.3...v0.6.4) (2026-03-23)

### Bug Fixes

* add terraform-runs-on to secret distribution ([#38](https://github.com/JacobPEvans/secrets-sync/issues/38)) ([377cf9b](https://github.com/JacobPEvans/secrets-sync/commit/377cf9b852ac7f2970eec2a0a4eca94bbd55ebf9))

## [0.6.3](https://github.com/JacobPEvans/secrets-sync/compare/v0.6.2...v0.6.3) (2026-03-20)

### Bug Fixes

* **logging:** add warning annotations for inaccessible repos ([#33](https://github.com/JacobPEvans/secrets-sync/issues/33)) ([dae4607](https://github.com/JacobPEvans/secrets-sync/commit/dae4607a8c34044e019f2525145b41cf6dfb3f22))

## [0.6.2](https://github.com/JacobPEvans/secrets-sync/compare/v0.6.1...v0.6.2) (2026-03-19)

### Bug Fixes

* add nix-devenv to _all_repos anchor for full secret distribution ([#34](https://github.com/JacobPEvans/secrets-sync/issues/34)) ([0989a0d](https://github.com/JacobPEvans/secrets-sync/commit/0989a0df1468e30efec45f26930c49033d9c706c))

## [0.6.1](https://github.com/JacobPEvans/secrets-sync/compare/v0.6.0...v0.6.1) (2026-03-19)

### Bug Fixes

* distribute GitHub App secrets to all release-please repos ([b275326](https://github.com/JacobPEvans/secrets-sync/commit/b275326ef91f1f554acbf2cdaf06f0eed5cc9515))

## [0.6.0](https://github.com/JacobPEvans/secrets-sync/compare/v0.5.0...v0.6.0) (2026-03-19)

### Features

* add claude-code-plugins to github app repos ([#27](https://github.com/JacobPEvans/secrets-sync/issues/27)) ([a6aa9d8](https://github.com/JacobPEvans/secrets-sync/commit/a6aa9d8c632e701dd84621b1b4cda6a6e862c3ce))
* introduce two-tier secret distribution architecture ([aec4bca](https://github.com/JacobPEvans/secrets-sync/commit/aec4bca7f508374c2e38ae4275061dcbf76a794b))

### Bug Fixes

* standardize release-please workflow and config ([1ea1120](https://github.com/JacobPEvans/secrets-sync/commit/1ea1120fbc034899d8b4424c8f9a8eda39d9e1c7))

## [0.5.0](https://github.com/JacobPEvans/secrets-sync/compare/v0.4.0...v0.5.0) (2026-03-11)

### Features

* distribute GH App secrets to nix-ai, nix-darwin, nix-home ([#23](https://github.com/JacobPEvans/secrets-sync/issues/23)) ([b1e1264](https://github.com/JacobPEvans/secrets-sync/commit/b1e12648b085919b9739359f2e0ca68c9a9409b5))

## [0.4.0](https://github.com/JacobPEvans/secrets-sync/compare/v0.3.0...v0.4.0) (2026-03-11)

### Features

* add GH_ACTION_JACOBPEVANS_APP_ID and expand GH_PAT_WORKFLOW_DISPATCH distribution ([#24](https://github.com/JacobPEvans/secrets-sync/issues/24)) ([3acd031](https://github.com/JacobPEvans/secrets-sync/commit/3acd0313a244fda94bba869ba1bf1ef8e1eedc2c))

## [0.3.0](https://github.com/JacobPEvans/secrets-sync/compare/v0.2.1...v0.3.0) (2026-03-07)

### Features

* **renovate:** extend org-wide shared preset ([2782f16](https://github.com/JacobPEvans/secrets-sync/commit/2782f1620765e556a34c2ea897783aa44714ddd0))

## [0.2.1](https://github.com/JacobPEvans/secrets-sync/compare/v0.2.0...v0.2.1) (2026-03-05)

### Bug Fixes

* never log repo names in PAT validation errors ([161940b](https://github.com/JacobPEvans/secrets-sync/commit/161940b53b2a0d9eb4a4741cbc19fdf812934dba))
* never log repo names in visibility check errors ([4f09129](https://github.com/JacobPEvans/secrets-sync/commit/4f091299ccd947100ff2217df467b54d87ea841a))
* parse PR number in shell to avoid fromJson on empty output ([c8d7cbd](https://github.com/JacobPEvans/secrets-sync/commit/c8d7cbd01919b2b39dcb7984713c6e3bd2afeccb))
* remove inaccessible repos and add PAT access guard ([180adcd](https://github.com/JacobPEvans/secrets-sync/commit/180adcd5f388131010dca4a4ed79266f9321af66))
* remove inaccessible repos and add PAT access validation ([bfe0b5e](https://github.com/JacobPEvans/secrets-sync/commit/bfe0b5e6dd28b059a2cc28c600d3cf29a004c8db))
* remove splunk-homeassistant, splunk-templates, unifi-backup-decrypt ([177d4af](https://github.com/JacobPEvans/secrets-sync/commit/177d4af06896d6cb268d790abf81b6f13ecc10ac))
* replace visibility guard with PAT access validation ([dae37f2](https://github.com/JacobPEvans/secrets-sync/commit/dae37f243fdad9dded02636cce26d3e995887285))
* restore all repos, add public-only visibility guard ([32c0942](https://github.com/JacobPEvans/secrets-sync/commit/32c09424c9c6391ecac4cd5455a9915be80ae705))
* use printf instead of echo for safer JSON piping ([ad561db](https://github.com/JacobPEvans/secrets-sync/commit/ad561db2541c72733858d9a0bd6dc35500d5f717))
* validate all unique repos and improve config documentation ([98b6a01](https://github.com/JacobPEvans/secrets-sync/commit/98b6a011ae0c1b6dfe66fc7dda29bdb74cb222a7))

## [0.2.0](https://github.com/JacobPEvans/secrets-sync/compare/v0.1.0...v0.2.0) (2026-03-05)

### Features

* add ANTHROPIC_API_KEY to all_repos distribution ([7812d62](https://github.com/JacobPEvans/secrets-sync/commit/7812d621f2f8a98845d2474e263638ac02f30a1c))
* add GH_SLACK_CHANNEL_ID_GITHUB_AUTOMATION to all repos ([a5b4850](https://github.com/JacobPEvans/secrets-sync/commit/a5b4850df21fbd565474c2d601add5fc6fc86e48))
* add GH_SLACK_WEBHOOK_URL_GITHUB_AUTOMATION to all repos ([e102e39](https://github.com/JacobPEvans/secrets-sync/commit/e102e39775f44a4d5b02ca05d1ac0a9bfbf8d2ef))
* enable auto-merge on release-please PRs ([032bfd0](https://github.com/JacobPEvans/secrets-sync/commit/032bfd017cff6b6eb66ab145173ad4329a5a40f3))
* **gh-aw:** add malicious-code-scan workflow, update secrets config ([ce0d946](https://github.com/JacobPEvans/secrets-sync/commit/ce0d9460b50c131d8c97d45c84ade5b4ebfbf7c3))
* secrets-sync - centralized GitHub Actions secret management ([5c067fb](https://github.com/JacobPEvans/secrets-sync/commit/5c067fb03a0d20515e3717eb882eb168c5823159))
* yaml anchors, new secrets, badges, security doc fix ([46e3ee3](https://github.com/JacobPEvans/secrets-sync/commit/46e3ee3552ed07f888cb550d31a8b9cf208a5641))

### Bug Fixes

* add --repo flag to gh pr merge for non-checkout context ([b08c871](https://github.com/JacobPEvans/secrets-sync/commit/b08c8717d1aae2bcdc91f769e5687e032cac4d3d))
* address PR review feedback on gh-aw workflows ([cad0a76](https://github.com/JacobPEvans/secrets-sync/commit/cad0a767d05fee5c6489792400aeb922310319fc))
* comment out ANTHROPIC_API_KEY sync for now ([d1ff953](https://github.com/JacobPEvans/secrets-sync/commit/d1ff953125342aed347392a9173ae87f5ca90dad))
* parse PR number from release-please JSON output ([6822504](https://github.com/JacobPEvans/secrets-sync/commit/682250429c91dfffbf9efeab415387ffd1b2e6ca))
* remove ANTHROPIC_API_KEY alias, fix alphabetical ordering ([debb48f](https://github.com/JacobPEvans/secrets-sync/commit/debb48f30aa3ebadb78f73a0c0b2f6b96d965563))
* use --rebase merge method for release-please auto-merge ([dc61f9a](https://github.com/JacobPEvans/secrets-sync/commit/dc61f9a16bc5b518d91ecd2f49ad47b642c605ec))
