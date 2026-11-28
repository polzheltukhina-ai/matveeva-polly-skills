---
name: reels-production-brief
description: Converts completed source/reference analysis and creator preferences into a grounded Reels production brief and a ready-to-run Codex execution prompt.
---

# Reels Production Brief

Use this Skill after source footage and optional reference analysis are complete. It converts existing analysis into an actionable handoff; it does not repeat analysis or render video.

## Purpose and boundaries
- Produce a Reels Production Brief and a self-contained Codex Execution Prompt.
- Reuse existing transcript, word timestamps, reference map, asset catalogue, brand guide and user decisions.
- Do not ask the user to repeat information already present.
- Never invent speech, timecodes, assets, brand rules, sound files, capabilities or reference details.
- Keep simple talking-head edits lightweight; do not create a heavyweight storyboard unless complexity requires it.
- The creator's own brand guide and explicit preferences take priority. Never impose the library author's personal style on participants.

## Workflow

### 1. Recover context
Verify that saved analysis belongs to the current source version. Reuse valid transcripts and word timestamps. Separate observed reference facts from estimates and unknowns. Preserve approved decisions and distinguish them from proposals. If a consequential input is missing, ask one focused question; do not silently fabricate it.

### 2. Establish creative direction
Summarize the core message, narrative arc, visual style, pace, tone, role of inserts/graphics/kinetic typography, and audio direction when requested. Explain how visual choices support speech. Do not add effects merely to make the timeline busy.

### 3. Build beat-by-beat production map
For each meaningful beat record: beat ID; source start/end; exact spoken anchor or short excerpt; narrative purpose; subject framing; composition; graphic/insert; motion/transition; caption treatment and safe placement; sound event if any; verified asset path or unresolved dependency; confidence (observed, estimated, needs confirmation). Use a compact table. Split beats when composition/action changes. Use word timestamps for speech-triggered actions. Never start a major reframe before its spoken anchor.

### 4. Plan motion and visual rhythm
- Review for meaningful visual change roughly every 2–3 seconds when speech and scene support it. This is a pacing heuristic, not an effect quota.
- Vary visual explanations when similar inserts would otherwise repeat; avoid repeating the same interface composition unless intentional.
- Specify what moves, where, when it starts, how it resolves, and what must remain visible.
- Preserve face, headroom, hands, gestures and natural subject scale.
- Use the creator's brand guide for colors, fonts, captions, overlays and prohibited treatments.
- Separate persistent captions, kinetic headlines and information overlays.
- Headline wording must come from speech or approved copy. Never leave production placeholders in the final plan.

### 5. Plan captions and typography
Specify caption grouping, font/size only when known, timing, local contrast, safe zones and face clearance. For kinetic typography specify exact approved wording, hierarchy, line breaks, entry/exit behavior and relation to speech. Do not assume a universal active-word color. If monochrome adaptive captions are requested, use black or white according to local contrast; subtle shadow/glow only if allowed; no colored highlight, stroke or plate unless approved.

### 6. Plan transitions
For each major reframe specify exact spoken trigger, source time, starting/ending composition, subject scale/position, movement/easing intent, approximate duration when grounded, caption behavior and related sound. Preserve every requested intermediate state. Prefer smooth coordinated motion over abrupt layer jumps.

### 7. Plan Sound Design when requested
Read references/sound-design-library.md. Prefer the actual configured project-local library and its index. Do not invent file names or claim a library exists until its path is verified. Shortlist a few candidates and listen before selecting. Avoid repeating one generic whoosh/pop. Preserve meaningful original audio; keep voice intelligible; do not add music without approval. Record cue, file/path, event anchor, timing, gain/fades when known, rights status and whether actually listened. Distinguish automated checks from human listening.

### 8. Asset manifest
List source media, references, supplied inserts, graphics, logos, fonts, sound libraries and project assets. Use exact verified paths. Mark unavailable or ambiguous assets. Never substitute a similarly named file without confirmation.

### 9. Completeness check
Check source speech coverage, valid spoken anchors, all user requirements/prohibitions, reference keep/adapt/exclude decisions, face safety, caption/headline collisions, coherent visual rhythm, complete transitions, grounded sound events, asset dependencies and export requirements. Ask only about unresolved choices that materially change the edit.

## Deliverables

### A. Reels Production Brief
Create a project-local Markdown document containing: project summary/creative direction; confirmed requirements and prohibited treatments; beat timeline; motion/composition map; caption/typography rules; transition map; Sound Design map if requested; asset manifest; export requirements; acceptance checklist and unresolved questions.

### B. Codex Execution Prompt
Create a second self-contained prompt that names exact project/source/brief paths; links to https://github.com/polzheltukhina-ai/matveeva-polly-skills; requires checking the current main branch; reads AGENTS.md, SKILL-INDEX.md, HOW-TO-CHOOSE.md then only selected Skills/references; selects the smallest compatible Skill set and one primary engine; reuses existing transcripts, caches, components and assets; implements the approved brief; avoids unnecessary installs, provider switches, downloads and repeated expensive analysis; uses proof renders only for new/risky/unverified effects or when requested; validates output and reports automated checks, visual inspection, human listening and unresolved items separately.

Include the complete brief or a verified project-local path. Do not leave generic placeholders when exact paths are known. Do not make the participant manually transfer information between documents.

## Efficiency
One brief per project/version; update incrementally. Keep transcripts, contact sheets and large asset inventories in project files, not in prompts. Do not repeat analysis when inputs are unchanged. Do not preload all Skills or engine docs. Keep Codex handoff operational and concise; link to reusable Skills instead of copying their full contents.
