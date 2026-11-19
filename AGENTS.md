# favorcraft — development rules

**Human creative:** Babuni

Preserve all named human collaborators and third-party sources. Where relevant, retain Danoozy's original-idea credit separately from Babuni's implementation and artistic direction. Do not infer test success from README or code. Document design choices, AI contribution, tests and rejected alternatives with evidence.

## Additional documentation discipline — audit #35

For all releases and portfolio writeups, retain **Danoozy — original idea** and **Babuni — implementation and refinement** explicitly. Separate AI source analysis and coding assistance from those human contributions. Treat 309 recipes and 314 vendor offers as different counts with a stated five-certification difference. Do not claim an upgrade preserves plans until migration is actually tested. Keep private account data and packaging tokens out of the repository.

## Repository-local documentation standard

Follow [the documentation standard](docs/DOCUMENTATION.md) for first-person author voice throughout project documentation, factual changelogs, and naming the AI tool and verified model for each contribution. These rules travel with this repository and do not depend on the babuni.dev ChatGPT Project. Preserve all project-specific technical, creative, canon, safety, licensing, and historical rules in this file; follow the linked standard for public first-person narrative, human–AI attribution, concise development journals, decision records, and evidence-based verification. **Babuni** is the human creative; **babuni.dev** is the website/portfolio, not the person. Preserve third-party credits and historical legal notices. References above to a dated “documentation-only audit” describe that past task, not a permanent ban on later authorized implementation.

## Human–AI collaboration record

`docs/AI_COLLABORATION.md` is the short record of how Babuni works with AI and who did what, with the same text in all of Babuni's repositories. Do not add dated entries, session notes or per-change attribution to it. Record each contribution in `docs/DEVLOG.md` (what Babuni asked for and what the AI did, naming the tool and model) and in `CHANGELOG.md`. Change `docs/AI_COLLABORATION.md` only to add a row to its "Who did what" table when a new AI tool or model starts contributing to this project, or when Babuni revises the shared text.

## Repository layout

The repository root holds only `README.md`, `AGENTS.md`, `LICENSE` and `CHANGELOG.md` (plus any additional license files). All other documentation lives in `docs/`; put new documents there.

Addon runtime code lives in folders, never loose in the root. The root keeps only the two TOC files (WoW requires them there), the four documents above, and tool configuration (`.pkgmeta`, `.github/`). Put new files in the matching folder and list them by folder path in **both** TOCs and the relevant tests:

| Folder | Contents |
| --- | --- |
| `Core/` | Planner logic and faction definitions |
| `Data/` | Client-derived recipe catalog and schematics |
| `Comparisons/` | Per-profession comparison modules, source audits and the `Comparisons.lua` aggregator |
| `UI/` | Interface frames and widgets |
| `tests/` | LuaJIT checks run by CI (not packaged) |
| `docs/` | Documentation; `docs/research/` holds research notes and raw JSON exports that the addon never loads |
