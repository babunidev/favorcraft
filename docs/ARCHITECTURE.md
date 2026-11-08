# favorcraft — architecture

**Author:** Babuni.dev

Core.lua, Catalog.lua, Comparisons.lua and profession-specific comparison modules organize recipe data and cost logic; FavorCraft and Camelot TOCs support interface variants; README and PUBLISHING.md describe current distribution.

Code and file evidence only; runtime behavior not independently verified.

## Source responsibilities and migration — 2026-10-28

As of the 0.5.1-beta tag (2026-11-04), both TOCs declare Interface **16001**, version **0.5.1-beta**, and both `RRPDB` and `FavorcraftDB` SavedVariables. The load order begins with `Catalog.lua`, `Schematics.lua`, `Faction.lua` and `Core.lua`; profession-specific comparison and source-audit files feed `Comparisons.lua`, and `UI/` splits widgets, navigation, browsing, details, planning, settings and shopping.

`Catalog.lua` contains **309 recipe entries** shared by both faction vendors, while five 1,000-Favor profession certifications explain references to **314 offers** in some writeups. `Core.lua` normalizes older selected-plan states and preserves prior character records where possible. The TOC and README expose aliases from the original Redridge Recipe Planner. These are source-observed compatibility measures, not evidence of a completed live migration test. `PUBLISHING.md` describes `.pkgmeta` and tag-based CurseForge packaging; validate its remote URLs before reuse.

## 0.5.1-beta package boundaries — 2026-11-04

Both `FavorCraft.toc` and `FavorCraft_Camelot.toc` list the same Lua runtime files in the same order. The GitHub Actions workflow checks these manifests and produces `FavorCraft/<manifest files and listed Lua files>`; its successful run at `2ba7601` is [41925630865](https://github.com/babunidev/favorcraft/actions/runs/41925630865). The independent CurseForge packager reads `.pkgmeta`, where `package-as: FavorCraft` sets the directory name and `ignore` excludes `tests`, `.github`, `docs`, `AGENTS.md`, `AlchemyComparisons.json`, and other developer documents. `CHANGELOG.md` is intentionally available to `manual-changelog` for release notes.

The GitHub-built ZIP and CurseForge-built ZIP are different packaging paths. A successful GitHub workflow does not prove that the actual CurseForge archive excludes every non-runtime file. CurseForge listed 0.5.1-beta as Beta / Forever 1.60.1 / Processing after the tag push; final archive inspection remains pending.

## Profession-specific filter state — 2026-11-08

`Core.lua` owns filter snapshot persistence in `profile.professionFilters`, keyed by profession name. `RRP.SaveProfessionFilters` copies the active filter state; `RRP.RestoreProfessionFilters` restores a saved state without sharing mutable role/spec tables. `RRP.SetProfession` saves the outgoing profession and restores the destination, applying the existing broad/all-spec defaults only when that profession has no saved snapshot. `UI/Main.lua` restores the selected profession on window show and saves it on hide and `PLAYER_LOGOUT`. Filter snapshots are character-scoped under the existing `RRPDB.characters` SavedVariables structure; purchase plans, learned recipes and profession scan data are not included.
