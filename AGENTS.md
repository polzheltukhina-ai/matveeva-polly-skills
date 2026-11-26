# AGENTS.md — Matveeva Polly Video Skills

## Goal
Create clear, modern videos for Reels, Shorts, TikTok, and YouTube. Explain decisions plainly for beginners. This repository contains skills and references; it is not itself a rendering engine.

## Mandatory context budget and routing (takes precedence over workflow below)
- Read SKILL-INDEX.md once per task/session if routing is needed. Do not recursively read, concatenate, summarize, or preload all skills, examples, references, or engine documentation.
- For a local change to existing code, inspect only the relevant component and its direct dependencies; no skill reload unless required.
- For a new task select one primary skill and engine (if needed). Read only its SKILL.md; follow only the specific linked section/file required for the current operation. Add another skill only for a distinct requested operation or concrete blocker; state why in one line.
- Captions-only: reuse valid transcript or obtain word timestamps if needed; use only the selected engine's caption instructions. Do not load speech-cutting, directing, storyboard, reference, or motion skills unless requested.
- Speech cleanup only: conversation-editing; no animation engine unless needed for export.
- Do not dump media metadata, transcripts, logs, source trees or large files into context. Use targeted queries and bounded excerpts; keep full intermediate artifacts on disk.
- Check only prerequisites of the selected operation. Reuse valid results. After two unsuccessful attempts at the same blocker, stop repeating and report the specific blocker and next viable option.
- These rules constrain reading and tool output, not correctness: perform necessary validation and preserve user approval requirements.
- Report selected skills, additional reads and reason, reused artifacts, and unresolved blockers briefly. Do not invent token savings or usage metrics.

## Workflow
1. Identify the deliverable, platform, aspect ratio, target duration, source media, reference, and requested speech edits.
2. Verify the actual files available in the current workspace before analysis. Prefer attached/current-workspace files and discoverable project files over guessed paths or filenames.
3. If a file is missing or multiple candidates are ambiguous, report the candidates and ask one focused question. Never silently substitute a similarly named file.
4. Inspect the actual source media. Never invent speech, visuals, timecodes, or source assets.
5. Read SKILL-INDEX.md and only the relevant skill instructions. Select the smallest compatible set and one primary rendering engine.
6. Reuse existing project setup, dependencies, transcripts, edit plans, assets, and components when their source inputs and requirements have not changed.
7. Analyze the reference and source once. Save reusable outputs (transcript, edit decision list, reference analysis, storyboard, configuration) in the project.
8. Present the proposed edit plan and resolve only decisions that cannot be inferred safely.
9. Obtain approval before final rendering unless the user explicitly waives approval. For complex or unproven effects, render a short representative proof first.
10. Verify the final export and state exactly which checks were automated, visually inspected, listened to, or not performed.

## Source-footage and speech-edit decisions
Do not assume every talking-head source is already clean or that every source needs cutting. Establish the requested treatment explicitly:
- Preserve the complete original take unchanged.
- Remove only long pauses.
- Remove pauses plus false starts, repeated words, filler words, or stumbles.
- Remove specified sections or select the strongest takes.
- Reorder sections only when explicitly requested and supported by the source.
- Other user-defined treatment.

If the user has not specified, inspect the source and recommend a conservative edit policy with examples/timecodes; ask for approval before destructive or meaning-changing cuts. Do not remove every natural pause. Preserve sentence meaning, breath, emphasis, and conversational rhythm. Never rewrite spoken wording in captions to conceal an edit. Keep a source-to-output edit decision list with exact source in/out timecodes and reasons. Use audio/video cuts consistently and add suitable short audio fades/crossfades where needed to avoid clicks. Do not time-stretch or alter voice tone unless requested.

## Visual quality and fidelity
- Treat the approved reference and user style guide as constraints, not loose inspiration.
- Separate observed reference facts from uncertain estimates.
- Preserve source color, exposure, skin tones, and image quality unless changes are requested.
- Keep faces, headroom, hands, and meaningful gestures visible. Do not crop a face to fit a frame.
- If a subject must extend beyond a frame boundary, use a technically appropriate foreground mask/segmentation only when the effect is approved and feasible; preserve the original subject appearance.
- Do not add unapproved backgrounds, caption plates, strokes, shadows, gradients, frames, stickers, music, or sound effects.
- Motion must support meaning, rhythm, or an approved sound event.
- Use the user's stated safe zones and typography. Do not invent exact measurements when unspecified.

## Environment and resource efficiency
- Check only the dependencies needed for the selected engine and requested effects.
- Do not perform a full environment inventory on every new video. Recheck only when setup is new, changed, or failing.
- A skill file does not install its runtime dependencies.
- Do not install packages or switch engines without a concrete need and user awareness.
- Do not repeat transcription, reference analysis, contact sheets, or setup checks when source files and relevant settings are unchanged and valid saved outputs exist.
- Before editing, inspect the current project and reuse working components. Make the smallest targeted change.
- For local fixes, render only the affected section when technically reliable; render the complete final export after approval.
- Avoid duplicate renders, redundant intermediate files, unnecessary parallel heavy processes, and speculative effect experiments.

## Engine selection
- Remotion: React-driven video compositions, captions, sequences, and rendering.
- GSAP: animation timelines and web-based motion components.
- HyperFrames: only when its workflow matches the project.
- Howseen Motion Design: HTML + Playwright + FFmpeg workflow.
- Product Launch Motion: choose V1 or V2 based on the actual brief.
- mult-marketing: only for the author's animated family-character series.
Do not combine engines without a clear technical reason.

## Environment honesty and QA
- Verify the actual runtime, packages, fonts, codecs, and tools required by the chosen workflow.
- Never claim a skill is installed or tested without checking the current environment.
- Never claim an export is complete until the output file exists and decodes.
- Automated frame/contact-sheet checks are not equivalent to continuous human viewing. Audio correlation is not equivalent to listening.
- Report separate statuses for technical validation, visual inspection, and audio listening. Flag uncertain transcript words for human confirmation.
- Check export dimensions, frame rate, codec, duration, full-file decoding, subtitle timing/safe zones, audio sync/continuity/clipping, and requested visual constraints as applicable.

## Export
Follow the user brief. If unspecified for a vertical short, propose MP4/H.264, 1080×1920, 9:16, 30 fps, while preserving source FPS when appropriate.
