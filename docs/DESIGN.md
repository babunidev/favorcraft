# FavorCraft — Visual and Interaction Design

**Author:** Babuni.dev. **Original idea:** Danoozy.

FavorCraft is an in-game Merchant's Favor planning interface for World of Warcraft: Forever. The window opened with `/fc` and `/favorcraft` lets a player browse recipes by profession, class, role and specification; select purchases; and inspect required materials and recipe comparisons. The earlier `/rrp` and `/redridge` shortcuts remain available to preserve familiarity from Redridge Recipe Planner.

The documented 0.5.0-beta design prioritizes practical decisions over an undifferentiated vendor dump: readable item names replace momentary numeric IDs, reagents appear together, comparisons scroll alongside materials, and recipes without relevant comparisons show None. A learned recipe is marked with a green check; one not learned with a red cross. All classes can include the full 309-recipe catalog, including class-specific entries otherwise filtered. Opening several broad professions defaults visually to All specs without discarding the player's stored preference.

The user experience is intended to protect planned purchases through updates. Current window layout, keyboard navigation, accessibility, tooltips, scan reliability and role filtering require actual in-game testing; this audit did not open WoW. See [content inventory](CONTENT.md) and [release history](../CHANGELOG.md).
