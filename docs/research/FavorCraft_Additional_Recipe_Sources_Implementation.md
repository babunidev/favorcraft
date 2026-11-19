# FavorCraft: Additional Recipe Sources (Implementation Brief)

**For:** Qaiser  
**Scope:** Merchant's Favor recipes that are also reported as dungeon drops, world drops, or dungeon vendor purchases.  
**Status:** Beta research requiring source verification.  
**Current coverage:** 32 reported pattern/plan overlaps: 15 Blacksmithing, 17 Leatherworking. No further overlaps established for Alchemy, Cooking, Enchanting, Engineering, or Tailoring. Absence of a record is **not** proof of exclusivity.

## Purpose

Help a player decide whether to spend Merchant's Favor on a recipe or attempt to acquire **that same recipe** from another source. Show these under **Additional Recipe Source**, separately from comparisons with different craftable items.

The numeric IDs below are **recipe scroll/plan/pattern item IDs**. They are **not** the crafted equipment item IDs or recipe spell IDs.

## Blacksmithing: 15 reported alternate plan sources

| Merchant's Favor plan | Recipe item ID | Reported other source(s) |
|---|---:|---|
| Veteran's Gloves | 251360 | Sneed, Cookie (The Deadmines); Jergosh the Invoker (Ragefire Chasm) |
| Guard's Gloves | 251361 | Taragaman the Hungerer (Ragefire Chasm) |
| Protector's Gloves | 251362 | Rhahk'Zor, Mr. Smite (The Deadmines); Shadowfang Keep; Ragefire Chasm |
| Acolyte's Gloves | 251363 | Rhahk'Zor (The Deadmines); Shadowfang Keep; Ragefire Chasm |
| Crusader's Gloves | 251364 | Rhahk'Zor, Sneed (The Deadmines); Shadowfang Keep |
| Veteran's Silvered Chain Helm | 251380 | Fenrus the Devourer (Shadowfang Keep); Targorr the Dread (The Stockade) |
| Guard's Silvered Chain Helm | 251381 | Fel Steed / Shadow Charger (Shadowfang Keep) |
| Protector's Silvered Chain Helm | 251382 | Shadowfang Keep; Targorr the Dread (The Stockade); Lady Sarevess, Ghamoo-ra (Blackfathom Deeps) |
| Acolyte's Silvered Chain Helm | 251383 | Lady Sarevess (Blackfathom Deeps) |
| Crusader's Silvered Chain Helm | 251384 | Ghamoo-ra, Lady Sarevess (Blackfathom Deeps); Targorr the Dread (The Stockade) |
| Veteran's Silvered Chain Leggings | 251375 | Dextren Ward (The Stockade); Gelihast, Old Serra'kis (Blackfathom Deeps) |
| Guard's Silvered Chain Leggings | 251376 | Dextren Ward (The Stockade); Aku'mai (Blackfathom Deeps) |
| Protector's Silvered Chain Leggings | 251377 | Hamhock (The Stockade); Lorgus Jett, Gelihast, Aku'mai (Blackfathom Deeps) |
| Acolyte's Silvered Chain Leggings | 251378 | Agathelos the Raging (Razorfen Kraul); Aku'mai (Blackfathom Deeps) |
| Crusader's Silvered Chain Leggings | 251379 | Kam Deepfury (The Stockade); Overlord Ramtusk (Razorfen Kraul) |

## Leatherworking: 17 reported alternate pattern sources

| Merchant's Favor pattern | Recipe item ID | Reported other source(s) |
|---|---:|---|
| Brawler's Leather Hood | 252798 | Lady Sarevess (Blackfathom Deeps) |
| Defender's Leather Hood | 252800 | Edwin VanCleef (The Deadmines) |
| Trapper's Leather Hood | 252799 | Shadowfang Keep; Edwin VanCleef (The Deadmines); Wailing Caverns |
| Totemic Leather Hood | 252801 | Shadowfang Keep; Edwin VanCleef (The Deadmines); Ghamoo-ra (Blackfathom Deeps) |
| Wisdom's Leather Hood | 252803 | Shadowfang Keep; Edwin VanCleef (The Deadmines) |
| Brawler's Leather Gloves | 252777 | Gilnid (The Deadmines): **conflicting vendor-sale vs mob-drop records** |
| Defender's Leather Gloves | 252779 | Mr. Smite, Cookie (The Deadmines) |
| Trapper's Leather Gloves | 252778 | Gilnid, Cookie (The Deadmines); Lord Cobrahn (Wailing Caverns) |
| Totemic Leather Gloves | 252780 | Gilnid, Mr. Smite (The Deadmines); Bazzalan (Ragefire Chasm) |
| Stormrider's Leather Gloves | 252781 | Shadowfang Keep; Mr. Smite (The Deadmines); Oggleflint (Ragefire Chasm); Deviate Faerie Dragon (Wailing Caverns) |
| Wisdom's Leather Gloves | 252782 | Shadowfang Keep; Gilnid, Mr. Smite (The Deadmines); Ragefire Chasm bosses |
| Brawler's Leather Legguards | 252820 | Scarlet Monastery; The Stockade; Razorfen Kraul; Blackfathom Deeps; Gnomeregan |
| Defender's Leather Kilt | 252822 | Scarlet Monastery; The Stockade; Razorfen Kraul; Blackfathom Deeps; Gnomeregan |
| Trapper's Leather Legguards | 252821 | The Stockade; Razorfen Kraul; Blackfathom Deeps |
| Totemic Leather Leggings | 252823 | **Disputed:** Twilight Lord Kelris (Blackfathom Deeps) vs general world drop |
| Stormrider's Leather Kilt | 252824 | Bazil Thredd (The Stockade); Aku'mai (Blackfathom Deeps) |
| Wisdom's Leather Leggings | 252825 | Kam Deepfury (The Stockade); Gelihast, Old Serra'kis, Twilight Lord Kelris (Blackfathom Deeps) |

## Important source cautions

- These are **published/community-reported beta sources**, not confirmed live-server loot tables. Some named bosses have loot observations, while other sources are general dungeon listings. Keep those evidence levels distinct.
- For **Brawler's Leather Gloves** (`252777`), one listing describes Gilnid as a vendor selling the pattern; another describes a drop. Do not silently choose one.
- For **Totemic Leather Leggings** (`252823`), Endgame Tools describes a Twilight Lord Kelris drop, while RealmFirst lists a general world drop. Show the disagreement.
- Never infer a boss from a dungeon-only listing, or present a published drop rate as certain without a documented sample.
- Preserve original evidence URLs in source records when available. Examples from existing research: `https://endgametools.com/en/wow-forever/items/252798`, `https://realmfirst.net/world-of-warcraft-forever/items/252777/`, `https://endgametools.com/en/wow-forever/items/252823`, `https://realmfirst.net/world-of-warcraft-forever/items/252823/`.

## Implementation requirements

1. **Read, don't overwrite, existing sources:** The addon already has `LeatherworkingSourceAudit.lua` for 11 Leatherworking recipes. Reconcile and extend it to 17, preserving existing evidence, source type, notes, and conflicts. Add a separate `BlacksmithingSourceAudit.lua` for the 15 Blacksmithing records, or a shared equivalent consistent with the current module design.
2. **Join using the exact recipe key and scroll ID:** Resolve `Profession|Recipe Name` against `Schematics.lua` and compare the listed recipe scroll item ID. Do not confuse scroll ID with crafted item ID or recipe spell ID.
3. **Present separately from item comparisons:** UI section **Additional Recipe Source**. A second way of obtaining *the same recipe* is not a craftable-item substitute and does not imply identical source data is confirmed.
4. **Display source details clearly:** Dungeon, boss or NPC, and source category (`dungeon_drop`, `dungeon_report`, `world_drop`, `vendor_sale`, `disputed`). Show `Reported` when not confirmed. For dungeon-only reports, display the dungeon without inventing a boss.
5. **No fabricated data:** No invented drop rates, coordinates, faction availability, trainer teaching, or exact boss names. Do not turn a vendor sale into a drop.
6. **Preserve the existing comparison engine:** Do not delete existing item comparisons, overwrite recipes/materials/prices, or change learned-recipe logic. Only add and display alternate acquisition sources.
7. **Regression tests:** Validate 15 Blacksmithing + 17 Leatherworking entries, recipe IDs against `Schematics.lua`, zero invented or cross-profession keys, preservation of disputed sources, and noninterference with other professions. Ensure source entries display even when there is no different-item comparison.
8. **Local changes only:** Prepare a local patch for review. **Do not commit or push to GitHub** without explicit permission.

## Expected player-facing presentation

**Additional Recipe Source (reported)**  
**Plans: Acolyte's Gloves** · Recipe item `251363`  
- Rhahk'Zor, The Deadmines: listed dungeon drop  
- Other listings mention Shadowfang Keep and Ragefire Chasm without a specific confirmed boss.

This should help players judge whether to spend Favor or seek the same pattern elsewhere, while making uncertainty visible.
