# Favorcraft Additional Verification Research — Cursor Handoff

**Research date:** 2026-10-15  
**Scope:** 11 Leatherworking Merchant’s Favor patterns with reported alternative acquisition sources.  
**Purpose:** Resolve identifiers and assess whether the same recipe is obtainable from dungeon loot, vendors, or trainers.  
**Status:** Partial verification; no live-verified alternate acquisition source or confirmed trainer duplicate.

> **Use with caution:** A source listing and a confirmed live-server drop are not the same thing. Recipe scroll item ID, crafting spell ID, and crafted output item ID are three separate identifiers. Empty IDs remain unresolved.

## Research details

Date: 2026-10-15. All 11 previously flagged dungeon-associated patterns are preserved. **None has a live-verified alternate acquisition source.** The IDs are not guessed: blank means unconfirmed.

| Pattern | Spell ID | Scroll item ID | Output item ID | Reported other source (unverified) |
|---|---:|---:|---:|---|
| Brawler's Leather Hood | 1255109 | 252798 | — | Lady Sarevess (Blackfathom Deeps) |
| Defender's Leather Hood | 1255107 | — | — | Edwin VanCleef (The Deadmines) |
| Trapper's Leather Hood | 1255108 | — | — | Multiple dungeon bosses (Shadowfang Keep; The Deadmines; Wailing Caverns) |
| Totemic Leather Hood | — | — | — | Edwin VanCleef (among reported drops) (The Deadmines; other dungeons reported) |
| Wisdom's Leather Hood | 1255104 | — | — | Edwin VanCleef (among reported drops) (The Deadmines; Shadowfang Keep reported) |
| Brawler's Leather Gloves | — | 252777 | — | Gilnid (listed as sold; not confirmed drop) (The Deadmines) |
| Totemic Leather Gloves | 1255127 | — | — | Gilnid; Mr. Smite; Bazzalan (previously reported) (The Deadmines; Ragefire Chasm) |
| Stormrider's Leather Gloves | — | — | — | Multiple dungeon bosses (previously reported) (Shadowfang Keep; Deadmines; Ragefire Chasm; Wailing Caverns) |
| Brawler's Leather Legguards | 1255087 | — | — | Several dungeon bosses (previously reported) (Multiple dungeons) |
| Totemic Leather Leggings | — | 252823 | 252458 | Twilight Lord Kelris (reported); world drop (other database) (Blackfathom Deeps; unspecified world drop) |
| Stormrider's Leather Kilt | — | — | 252518 | Bazil Thredd; Aku'mai (previously reported) (The Stockade; Blackfathom Deeps) |

## Stronger findings

1. **Pattern: Brawler's Leather Hood (252798)** is documented by Endgame Tools as a 30 Merchant's Favor purchase from both faction vendors and a Lady Sarevess (Blackfathom Deeps) drop. Wowhead links the same scroll to crafting spell **1255109**.
2. **Pattern: Totemic Leather Leggings (252823)** is labeled a Twilight Lord Kelris dungeon drop by Endgame Tools; RealmFirst instead describes it as a general world drop. This is **source disagreement**, not a confirmed dungeon farm.
3. **Pattern: Brawler's Leather Gloves (252777)** appears as **sold by Gilnid** in RealmFirst. A seller is not a mob drop. Previously labeling that row a dungeon *drop* was unsound.
4. AHledger says certain Merchant's Favor patterns are also taught by trainers, while client-derived The Forever Era labels them learned via recipe items, and Endgame Tools explicitly characterizes Merchant's Favor recipes as untaught by trainers. **Trainer duplicates remain unconfirmed.**
5. Both recipe-scroll IDs and crafting spell IDs are distinct from **crafted output item IDs**. Never pass a spell ID into GetItemInfo expecting item stats.

## Source URLs

- https://endgametools.com/en/wow-forever/items/252798
- https://endgametools.com/en/wow-forever/items/252823
- https://www.wowhead.com/forever/spell=1255109/brawlers-leather-hood
- https://www.wowhead.com/forever/spell=1255087/brawlers-leather-legguards
- https://www.wowhead.com/forever/npc=639/edwin-vancleef
- https://realmfirst.net/world-of-warcraft-forever/items/252777/
- https://realmfirst.net/world-of-warcraft-forever/items/252823/
- https://ahledger.com/wow-forever/recipes/1255107-defenders-leather-hood
- https://ahledger.com/wow-forever/recipes/1255127-totemic-leather-gloves
- https://theforeverera.com/en/recipes/leatherworking/
- https://questing.wiki/wow-forever/professions/leatherworking/

## Cursor integration

Read `leatherworking_source_audit.json` as verification input, or `LeatherworkingSourceAudit.lua` for a compact runtime table. **Do not show a confirmed duplicate/equivalent badge for any of these on the basis of this audit alone.** Suggested UI: `Additional source reported (unverified)`; show source name, location, and citation in the development report. Resolve remaining recipe and item IDs from current-client records, join by scroll item ID / spell teaches relation, and confirm NPC loot tables or trainer offerings in game before enabling a definitive acquisition alternative.

### Data caveats

* Public site extracts span multiple beta builds (70124 to 70374), and server-side drop tables can differ.
* Wowhead pages sometimes indicate **two created items**, while other databases report **one per craft**. Preserve this discrepancy for live inspection; don't conflate output count with recipe identity.
* The report does not claim exhaustive cross-profession completion. It resolves selected identifiers and reassesses the 11 highest-priority Leatherworking candidates.


## Required integration checks

1. Match the Merchant’s Favor recipe with its recipe-scroll item ID and crafting spell ID. Do not rely on its name alone.
2. Resolve any missing IDs against the current WoW Forever client build. Never guess an item or spell ID.
3. Check whether claimed dungeon sources drop the **pattern item** rather than an unrelated finished crafted item.
4. Verify vendor sale versus loot-drop semantics, especially for Brawler’s Leather Gloves at Gilnid.
5. Treat claimed trainer availability as disputed until actual trainer offerings or robust server-side evidence confirm the same learned spell.
6. Preserve source conflict notes, dates and verification levels in the comparison database.
7. In the UI, show **Additional source reported (unverified)** until the acquisition is confirmed; do not label any of the 11 as a proven duplicate.

## Related machine-readable files

The companion research package includes `leatherworking_source_audit.json` and `LeatherworkingSourceAudit.lua`. This Markdown file is a self-contained handoff for Cursor; the other files provide structured records for import.
