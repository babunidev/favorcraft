-- Standalone catalog-backed regression for non-Favor comparisons.
-- Run from addon root: luajit tests/non_favor_comparisons.lua
local path = arg and arg[0] or "tests/non_favor_comparisons.lua"
local root = path:gsub("[/\\]tests[/\\]non_favor_comparisons%.lua$", "")
if root == path then root = "." end
local r = {}
local function load(file)
    local chunk = assert(loadfile(root .. "/" .. file))
    chunk("FavorCraft", r)
end
for _, file in ipairs({
    "Catalog.lua", "Schematics.lua", "AlchemyComparisons.lua",
    "BlacksmithingComparisons.lua", "BlacksmithingSourceAudit.lua",
    "CookingComparisons.lua", "EnchantingComparisons.lua",
    "EngineeringComparisons.lua", "LeatherworkingComparisons.lua",
    "LeatherworkingSourceAudit.lua", "TailoringComparisons.lua",
}) do load(file) end
r.GetByKey = function(key) return r.ByKey[key] end
load("Comparisons.lua")
local merchantIDs, merchantNames = {}, {}
for key, sch in pairs(r.Schematics) do
    merchantNames[key:match("^[^|]+|(.+)$")] = true
    if sch.kind ~= "enchant" and sch.outputItemID then merchantIDs[sch.outputItemID] = true end
end
local data = {
    Alchemy = r.AlchemyComparisons,
    Cooking = r.CookingComparisons,
    Tailoring = r.Comparisons.Tailoring.recipes,
}
local expected, recipes = {Alchemy=41,Cooking=6,Tailoring=8}, {Alchemy=29,Cooking=6,Tailoring=67}
for prof, records in pairs(data) do
    local links, count = 0, 0
    for _, raw in pairs(records) do
        if type(raw) == "table" and type(raw.matches) == "table" then
            count = count + 1
            for _, match in ipairs(raw.matches) do
                links = links + 1
                assert(match.acquisition ~= "merchants_favor", prof .. " favor source")
                assert(not merchantIDs[match.outputItemID or -1], prof .. " favor item")
                assert(not merchantNames[match.name], prof .. " favor name")
            end
        end
    end
    assert(count == recipes[prof], prof .. " recipe count " .. count)
    assert(links == expected[prof], prof .. " independent links " .. links)
end
local views = 0
for _, recipe in ipairs(r.Catalog) do
    views = views + 1
    local view = r.ComparisonsFor(recipe)
    assert(view and not view.missingRecord, "Missing research: " .. recipe.key)
    for _, match in ipairs(view.entries) do
        assert(match.acquisition ~= "Merchant's Favor vendor", "Favor source: " .. recipe.key)
        assert(not merchantIDs[match.itemID or -1], "Favor output: " .. recipe.key)
        assert(not merchantNames[match.name], "Favor name: " .. recipe.key)
    end
end
assert(views == 309, "Wrong catalog count")
local cooking = r.ComparisonsFor(r.ByKey["Cooking|Venomous Smoothie"])
assert(#cooking.entries == 1 and cooking.entries[1].name == "Peace Tea")
local alchemy = r.ComparisonsFor(r.ByKey["Alchemy|Elixir of the Whale"])
assert(#alchemy.entries == 1 and alchemy.entries[1].name == "Elixir of Spirit")
local tailoring = r.ComparisonsFor(r.ByKey["Tailoring|Flame Leggings"])
assert(#tailoring.entries == 1 and tailoring.entries[1].name == "Gaze Dreamer Pants")
local hood = r.ComparisonsFor(r.ByKey["Leatherworking|Brawler's Leather Hood"])
local plans = r.ComparisonsFor(r.ByKey["Blacksmithing|Acolyte's Gloves"])
assert(hood.sources and hood.sources[1].scrollItemID == 252798)
assert(plans.sources and plans.sources[1].scrollItemID == 251363)
-- Test incorrectly labelled, ID-linked, and name-linked Favor matches.
local list = r.AlchemyComparisons["Elixir of Lesser Spirit"].matches
local original = #list
list[#list+1] = {name="Elixir of Greater Spirit",outputItemID=250344,acquisition="unverified"}
list[#list+1] = {name="Unknown merchant",outputItemID=r.Schematics["Alchemy|Elixir of Lesser Spirit"].outputItemID,acquisition="unverified"}
list[#list+1] = {name="Fake external item",outputItemID=999999,acquisition="merchants_favor"}
r.RebuildComparisons()
assert(#r.ComparisonsFor(r.ByKey["Alchemy|Elixir of Lesser Spirit"]).entries == original, "Cross-Favor guard failed")
print("PASS: 309 views; 41 Alchemy, 6 Cooking, 8 Tailoring outside alternatives")
print("PASS: cross-Favor comparison guard and 32 additional-source records")
