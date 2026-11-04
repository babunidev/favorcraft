# FavorCraft — Content and Data Provenance

**Author:** Babuni.dev. **Initial idea:** Danoozy.

## Vendor and recipe scope

`Catalog.lua` describes a single shared collection for the Alliance **Azeroth Commerce Authority** at Three Corners, Redridge Mountains, and the Horde **Durotar Supply and Logistics** camp outside the Crossroads, Northern Barrens. This is an October 2026 source snapshot, not newly verified live vendor data. The catalog describes **309 recipes**. Public references to **314 offers** also count five 1,000-Favor profession certifications; those certifications are *not recipes* and are not imported as such.

`Schematics.lua` contains crafted item/reagent details; profession comparison modules and source audits support additional lookup and alternative evaluation. The 0.5.0-beta release notes document profession-specific comparisons, native tooltips, known-recipe status, materials planning and filtering.

## Persistence and compatibility

`FavorCraft.toc` declares both `RRPDB` and `FavorcraftDB` SavedVariables, Interface 16001 and version 0.5.0-beta. The README documents retention of the older FavorcraftDB table and legacy slash aliases to protect prior plans. `Core.lua` includes code to normalize older character selection formats without discarding legitimate selections. These are source-observed migration measures; an in-game migration test is still needed.

## Attribution and publishing

The README explicitly says the original concept came from **Danoozy**, with Babuni.dev implementing and refining the addon. Maintain both contributions, along with verified third-party catalog and comparison sources. `PUBLISHING.md` explains package assembly and external distribution; uses the current `https://github.com/babunidev/favorcraft` repository URL. Actual CurseForge
source integration, webhook and tag-only settings still require independent verification. Do not publish credentials or webhook tokens. Do not describe the research catalog as current without fresh checks.

## Separate recipe source audits (November 2026)

The source records comprise 15 Blacksmithing plans and 17 Leatherworking patterns. Their spell and pattern-scroll IDs are compared with the canonical client-derived `Schematics.lua`; crafted output item IDs remain distinct. The claims describe possible **additional acquisition of the same recipe scroll** and are not item alternatives. Dungeon, world and vendor acquisition paths are explicitly reported rather than confirmed live drops. The Leatherworking research contains trainer-learning disagreements with AHledger; the UI now shows that unresolved conflict rather than deciding whether a trainer teaches it. The Totemic Leather Leggings named-boss/world-drop descriptions are compatible as non-exclusive reports. The combined Fel Steed / Shadow Charger entry has been separated because the creatures are distinct. In-game acquisition remains unverified for the full set of 32.
