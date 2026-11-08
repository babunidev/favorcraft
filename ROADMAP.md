# favorcraft — roadmap

**Author:** Babuni.dev

## Current state

The 0.5.1-beta release candidate was tagged on 2026-11-04 at source commit `2ba7601`. GitHub Actions passed; CurseForge showed the Beta file for Forever 1.60.1 as **Processing** in the publisher's screenshot. Final approval, inspection of the actual CurseForge ZIP, and live gameplay tests remain unconfirmed. The October documentation audit did not launch the game.

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
- [x] Observe that the `v0.5.1-beta` tag triggered a CurseForge Beta file (publisher screenshot, 2026-11-04).
- [ ] Audit the private integration settings to establish that untagged commits cannot publish Alpha files.

No in-game or packaging acceptance test was performed in this documentation audit.

## November 2026 pre-release development

- [x] Remove cross-Favor item comparisons and review Blacksmithing peers (development; live test pending).
- [x] Keep the approved Learned / Unlearned visual states.
- [x] Prevent stale recipe details after filter or profession changes.
- [x] Audit 32 separate recipe-acquisition reports and mark disputed sources as reports.
- [x] Align comparison and publishing documentation with the source.
- [ ] Verify UI selection, vendor sources, reported drops and SavedVariables in the live Forever client.
- [x] Push the approved annotated tag `v0.5.1-beta` targeting `2ba7601` and observe the CurseForge Beta entry in Processing status.
- [x] Confirm GitHub Actions passed at the tagged commit (`41925630865`).
- [ ] Confirm CurseForge approval and inspect the downloadable archive to verify the exact installed file set.
- [ ] Verify that ordinary development pushes cannot trigger CurseForge Alpha packages.

## Unreleased usability improvement — per-profession filters

- [x] Store filter snapshots independently by profession in the character's existing SavedVariables profile.
- [x] Restore the active profession's snapshot when reopening FavorCraft.
- [x] Save the outgoing profession before switching and restore the destination's saved filters.
- [x] Preserve first-visit defaults for broad professions and the existing special All Specs behavior.
- [x] Add mocked regression coverage for profession switching and close/reopen restoration.
- [ ] Run the LuaJIT regression suite in CI and verify the behavior in WoW Forever 1.60.1.
