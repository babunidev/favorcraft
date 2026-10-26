# favorcraft — development journal

**Author:** Babuni.dev

## Retrospective source reconstruction — 2026-10-26

A cross-faction Merchant's Favor profession and recipe planner evolved from Redridge Recipe Planner, combining recipe budgeting with materials and profession scanning. The README attributes the initial idea to **Danoozy**, with Babuni.dev building and refining the project. That co-authorship must remain visible. FavorcraftDB is intentionally retained for saved-plan compatibility with the earlier tool; /rrp and /redridge aliases remain. The implementation separates concerns as follows: Core.lua, Catalog.lua, Comparisons.lua and profession-specific comparison modules organize recipe data and cost logic; FavorCraft and Camelot TOCs support interface variants; README and PUBLISHING.md describe current distribution.

The documentation pass is an AI-assisted reconstruction based on committed material, not a claim about who wrote each line or when a proposal was accepted. Babuni.dev's project authorship is preserved, as are explicit human collaborator credits. No in-game tests were executed here. Verify migration semantics, profession-window scans, cross-faction recipe filters, 309-vs-314 catalog explanations and comparison math in-game.
