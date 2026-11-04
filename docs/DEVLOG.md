# favorcraft — development journal

**Author:** Babuni.dev

## Retrospective source reconstruction — 2026-10-26

A cross-faction Merchant's Favor profession and recipe planner evolved from Redridge Recipe Planner, combining recipe budgeting with materials and profession scanning. The README attributes the initial idea to **Danoozy**, with Babuni.dev building and refining the project. That co-authorship must remain visible. FavorcraftDB is intentionally retained for saved-plan compatibility with the earlier tool; /rrp and /redridge aliases remain. The implementation separates concerns as follows: Core.lua, Catalog.lua, Comparisons.lua and profession-specific comparison modules organize recipe data and cost logic; FavorCraft and Camelot TOCs support interface variants; README and PUBLISHING.md describe current distribution.

The documentation pass is an AI-assisted reconstruction based on committed material, not a claim about who wrote each line or when a proposal was accepted. Babuni.dev's project authorship is preserved, as are explicit human collaborator credits. No in-game tests were executed here. Verify migration semantics, profession-window scans, cross-faction recipe filters, 309-vs-314 catalog explanations and comparison math in-game.

## 2026-10-28 — Audit #35: protecting a shared creative origin

FavorCraft's history begins with an important collaborative distinction. The README explicitly credits **Danoozy with the idea**, and **Babuni.dev with the work of building and polishing it**. The original Redridge Recipe Planner grew beyond a single Alliance-side setting into a cross-faction Merchant's Favor companion. In that expansion, preserving old plans and old slash commands mattered because a planner becomes valuable only when its records survive subsequent revisions.

The source shows how the problem was translated into structures: a shared vendor catalog, separate schematics and reagents, profession-specific item comparisons, and a modular shopping and planning interface. The October 16 v0.5.0-beta changelog describes refinements that favor readability and trust: resolved names, every reagent, sensible item comparisons and filters. The 309/314 count discrepancy also becomes understandable when the five profession certifications are separated from recipes.

**Human direction:** Danoozy's concept and Babuni.dev's implementation/refinement are distinct, documented contributions. **AI contribution in this audit:** Read source, preserve attribution and produce portfolio-ready guides, without inventing unrecorded approvals. **Implementation:** Markdown only. **Verification:** The TOC, catalog, core migration source, publishing guide and changelog were inspected; no game or packaging test was performed.

## 2026-11-04 — Blacksmithing comparison cleanup (development, not a release)

With the launch approaching, the comparison pane needed to answer a specific question: what could a player craft instead of spending Merchant's Favor? The old Blacksmithing research listed 61 same-slot candidates, but many were weaker items from distant levels, so the runtime correctly hid them. For my FavorCraft planner, a missing comparison is more useful than a misleading one. Four rare, close-level alternatives survived a new source review: the Enchanted Thorium chest, helm and legs, and Dark Iron Pulverizer. The other 57 recipe views now remain empty of item comparisons, while the separately reported additional recipe sources remain available.

**Human direction:** Restrict the feature to useful non-Favor alternatives and leave unmatched recipes empty. **AI contribution:** Reviewed Forever client-data publications, rewrote the Blacksmithing comparison records, tightened the shared quality/level guard and added regression checks. **Verification:** Automated GitHub checks can validate the implementation; actual in-game tooltips and reported recipe acquisition remain to be checked. No public release is authorized by this development entry.

## 2026-11-04 — Filters, additional sources and packaging checks (development)

A selected recipe could remain in the details pane after the profession or filters changed, even when the list no longer contained it. The planner's shopping selection is a separate choice, so the fix follows the visible recipe list without touching that plan. My source-audit requirement was to preserve reported dungeon recipes as information, not quietly turn a database claim into a verified drop. All 32 Blacksmithing and Leatherworking acquisition records were kept; trainer disagreements, mixed creature names and world-drop wording now carry clearer distinctions. The publishing guide also points to the current repository and does not presume that CurseForge is configured for tag-only builds.

**Human direction:** Correct stale selection, review 32 sources, update documentation and verify both TOCs. **AI contribution:** Repository/source review, code and documentation updates and test additions. **Verification:** GitHub Actions will run LuaJIT and inspect the assembled ZIP; the game client, third-party drop reports and live CurseForge integration are not validated by these automated checks.

## 2026-11-04 — 0.5.1-beta release preparation

The tested development changes have been assembled for a possible 0.5.1-beta public release. The new TOC versions and player-facing notes describe the filtering fix, non-Favor comparisons, and additional-source reports without claiming that database drop locations were verified in-game. GitHub Actions can validate both manifests and package integrity, but CurseForge's webhook and tag-only settings remain outside the repository and must be verified before a release-triggering tag is pushed. This preparation is not itself a public release.
