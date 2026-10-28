# favorcraft — development journal

**Author:** Babuni.dev

## Retrospective source reconstruction — 2026-10-26

A cross-faction Merchant's Favor profession and recipe planner evolved from Redridge Recipe Planner, combining recipe budgeting with materials and profession scanning. The README attributes the initial idea to **Danoozy**, with Babuni.dev building and refining the project. That co-authorship must remain visible. FavorcraftDB is intentionally retained for saved-plan compatibility with the earlier tool; /rrp and /redridge aliases remain. The implementation separates concerns as follows: Core.lua, Catalog.lua, Comparisons.lua and profession-specific comparison modules organize recipe data and cost logic; FavorCraft and Camelot TOCs support interface variants; README and PUBLISHING.md describe current distribution.

The documentation pass is an AI-assisted reconstruction based on committed material, not a claim about who wrote each line or when a proposal was accepted. Babuni.dev's project authorship is preserved, as are explicit human collaborator credits. No in-game tests were executed here. Verify migration semantics, profession-window scans, cross-faction recipe filters, 309-vs-314 catalog explanations and comparison math in-game.

## 2026-10-28 — Audit #35: protecting a shared creative origin

FavorCraft's history begins with an important collaborative distinction. The README explicitly credits **Danoozy with the idea**, and **Babuni.dev with the work of building and polishing it**. The original Redridge Recipe Planner grew beyond a single Alliance-side setting into a cross-faction Merchant's Favor companion. In that expansion, preserving old plans and old slash commands mattered because a planner becomes valuable only when its records survive subsequent revisions.

The source shows how the problem was translated into structures: a shared vendor catalog, separate schematics and reagents, profession-specific item comparisons, and a modular shopping and planning interface. The October 16 v0.5.0-beta changelog describes refinements that favor readability and trust: resolved names, every reagent, sensible item comparisons and filters. The 309/314 count discrepancy also becomes understandable when the five profession certifications are separated from recipes.

**Human direction:** Danoozy's concept and Babuni.dev's implementation/refinement are distinct, documented contributions. **AI contribution in this audit:** Read source, preserve attribution and produce portfolio-ready guides, without inventing unrecorded approvals. **Implementation:** Markdown only. **Verification:** The TOC, catalog, core migration source, publishing guide and changelog were inspected; no game or packaging test was performed.
