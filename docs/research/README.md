# Research files

These files record the research behind FavorCraft's comparison and additional-source data. The addon never loads them: no TOC lists them, and `.pkgmeta` excludes `docs/` from the CurseForge package. The runtime tables they fed live in `Comparisons/`.

| File | What it is |
| --- | --- |
| `FavorCraft_Additional_Recipe_Sources_Implementation.md` | Implementation brief for the 32 reported alternate plan/pattern sources (15 Blacksmithing, 17 Leatherworking). Basis for `Comparisons/*SourceAudit.lua`. |
| `Favorcraft_Additional_Verification_Research.md` | Verification research (15 October 2026) on 11 Leatherworking patterns with reported dungeon sources. Partial verification only. |
| `AlchemyComparisons.json` | Alchemy comparison data with resolved output item IDs. |
| `BlacksmithingComparisons.json`, `CookingComparisons.json`, `EnchantingComparisons.json`, `EngineeringComparisons.json`, `LeatherworkingComparisons.json`, `TailoringComparisons.json` | Raw comparison exports from 15–16 October 2026, before the later filtering to non-Favor, level-appropriate alternatives. They are larger than the current runtime modules and are kept as history. They are not the current data. |
