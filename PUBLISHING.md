# CurseForge publishing

FavorCraft has its addon files and `FavorCraft.toc` at the repository root.
`.pkgmeta` instructs the CurseForge repository packager to put the
addon into a **FavorCraft/** directory and omit development-only files.
`manual-changelog` sends the whole `CHANGELOG.md` as the file notes, so
CurseForge shows those player notes instead of commit messages.
`CHANGELOG.md` stays available to the packager. The other Forever addons
use this same `.pkgmeta` layout.

## Package verification

GitHub Actions creates a downloadable ZIP artifact on pushes to main and on
new version tags. The ZIP has `FavorCraft/FavorCraft.toc` at its root.

**Intended policy:** CurseForge packages only an explicitly approved tagged release.
This repository cannot confirm the live CurseForge source integration, webhook,
or auto-packager settings; verify them before pushing a release tag. In
particular, ensure ordinary pushes to main do not produce automatic Alpha files.
GitHub Actions checks the addon and builds a ZIP for review on main pushes;
it does not create a release tag or prove a CurseForge file was published.

A manual ZIP upload requires separate explicit public-release approval. The ZIP
can then be uploaded to the CurseForge project dashboard.
An ordinary GitHub source archive is **not** the same as a packaged addon.

## Enabling CurseForge automation

1. Create/approve the WoW addon project on CurseForge and configure the
   project's Source / Repository settings for
   `https://github.com/babunidev/favorcraft`.
2. For CurseForge's repository auto-packager, generate an API token **in your
   CurseForge account** and add a **GitHub repository webhook** with payload:
   `https://www.curseforge.com/api/projects/PROJECT_ID/package?token=TOKEN`.
   The project ID comes from the CurseForge project page.
   Use Content type `application/json` and push events only after confirming
   that untagged pushes cannot trigger an Alpha package. **Never commit the
   token to this repository, an issue, or a screenshot.**
3. Check the GitHub webhook deliveries for a successful HTTP result.
4. Only after explicit approval for that public version: prepare the changelog
   and both TOC versions, verify the exact release commit, and create an
   annotated tag such as `v0.5.2-beta`. Push **only that approved tag**
   (not all local tags). Create a matching GitHub prerelease only if the
   repository's agreed process requires it; verify CurseForge publication
   separately. Ordinary development commits to main are **not** releases.
5. Check the CurseForge project **Files** page for the packaged ZIP and
   the correct WoW Forever game version. A new project/file may require
   CurseForge moderation before it becomes publicly installable.

**Important:** A new Git commit, GitHub Release, or Actions ZIP by itself
cannot make CurseForge import an addon. The CurseForge repository connection
and delivery mechanism must be configured.

## Troubleshooting

- No GitHub webhook delivery? Set up/repair the CurseForge webhook.
- Delivery succeeded but no file? Check CurseForge Source/Packaging settings
  and ask CurseForge support to review the project, source URL and webhook.
- Only Alpha is available? Make sure a *new tagged commit* was pushed with
  a tag containing `beta` or `alpha` as intended.
- The published archive has scattered files instead of the addon folder?
  Confirm `.pkgmeta` contains `package-as: FavorCraft`.
- CurseForge app cannot discover the project? Check its approval status and
  that an approved Beta or Release file exists.
- To avoid accidental duplicate versions, never move/overwrite an existing
  published tag simply to retrigger packaging.

Sources:
- https://support.curseforge.com/support/solutions/articles/9000197281
- https://support.curseforge.com/support/solutions/articles/9000203228-manually-triggering-the-auto-packager

## 0.5.1-beta publication record — 2026-11-04

Babuni explicitly pushed the annotated tag `v0.5.1-beta` on source commit `2ba7601`. The GitHub tag is confirmed; the corresponding GitHub Actions run [41925630865](https://github.com/babunidev/favorcraft/actions/runs/41925630865) passed. A screenshot of the CurseForge project Files dashboard showed a new `v0.5.1-beta` Beta for Forever 1.60.1, **Processing**, with zero downloads at capture time. This is evidence of receipt and processing, not evidence of final approval.

Before the tag, `.pkgmeta` was corrected to ignore `AGENTS.md` and `AlchemyComparisons.json` as well as the existing development folders and documents. GitHub's separately generated ZIP contains only manifest-listed files. The downloadable CurseForge archive has not been inspected, and the private webhook/tag-only settings remain unverified. No matching GitHub Release was present at the time of this record; a tag alone should not be described as a GitHub Release.
