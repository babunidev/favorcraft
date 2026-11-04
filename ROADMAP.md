# favorcraft — roadmap

**Author:** Babuni.dev

## Current state

A working-intent codebase and public description are committed. This audit did not launch the game.

## Proposed verification

Verify migration semantics, profession-window scans, cross-faction recipe filters, 309-vs-314 catalog explanations and comparison math in-game.

Future features require a separate recorded author decision.

## Verification and publishing checklist — audit #35 (2026-10-28)

- [x] Preserve Danoozy's original-idea credit separately from Babuni.dev's implementation.
- [x] Add interaction-design, content/provenance and AI-collaboration references.
- [x] Document the 309-recipe versus 314-offer distinction from `Catalog.lua`.
- [ ] Verify both faction vendors and class/role filters against the same Forever build.
- [ ] Test legacy `/rrp` and `/redridge` commands and `RRPDB`/`FavorcraftDB` plan migration with existing data.
- [ ] Test profession-window scans, known-recipe indicators, shopping materials and comparison calculations in the client.
- [ ] Check both profession-specific source evidence and any claimed alternative item acquisition sources.
- [x] Correct the GitHub source URL and the release-gate instructions in `PUBLISHING.md`.
- [ ] Verify live CurseForge source integration, webhook and tag-only packaging settings before any release tag.

No in-game or packaging acceptance test was performed in this documentation audit.

## November 2026 pre-release development

- [x] Remove cross-Favor item comparisons and review Blacksmithing peers (development; live test pending).
- [x] Keep the approved Learned / Unlearned visual states.
- [x] Prevent stale recipe details after filter or profession changes.
- [x] Audit 32 separate recipe-acquisition reports and mark disputed sources as reports.
- [x] Align comparison and publishing documentation with the source.
- [ ] Verify UI selection, vendor sources, reported drops and SavedVariables in the live Forever client.
- [ ] Confirm CurseForge tag-only packaging and latest actually published file before a public release.
