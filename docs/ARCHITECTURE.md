# favorcraft — architecture

**Author:** Babuni.dev

Core.lua, Catalog.lua, Comparisons.lua and profession-specific comparison modules organize recipe data and cost logic; FavorCraft and Camelot TOCs support interface variants; README and PUBLISHING.md describe current distribution.

Code and file evidence only; runtime behavior not independently verified.

## Source responsibilities and migration — 2026-10-28

The TOC declares Interface **16001**, **0.5.0-beta**, and both `RRPDB` and `FavorcraftDB` SavedVariables. The load order begins with `Catalog.lua`, `Schematics.lua`, `Faction.lua` and `Core.lua`; profession-specific comparison and source-audit files feed `Comparisons.lua`, and `UI/` splits widgets, navigation, browsing, details, planning, settings and shopping.

`Catalog.lua` contains **309 recipe entries** shared by both faction vendors, while five 1,000-Favor profession certifications explain references to **314 offers** in some writeups. `Core.lua` normalizes older selected-plan states and preserves prior character records where possible. The TOC and README expose aliases from the original Redridge Recipe Planner. These are source-observed compatibility measures, not evidence of a completed live migration test. `PUBLISHING.md` describes `.pkgmeta` and tag-based CurseForge packaging; validate its remote URLs before reuse.
