---
name: video-director
description: Orchestrates video production by analyzing the user's goal, selecting compatible installed skills, planning the edit, and coordinating pre-production and quality checks.
---

# Video Director

Use when the user asks to create, edit, plan, or adapt a video.

## Required opening workflow
1. Read root `AGENTS.md`, `SKILL-INDEX.md`, and `HOW-TO-CHOOSE.md`.
2. Inspect actual files under `.agents/skills`; do not assume the index is current.
3. Identify the reference video, source video(s), desired output, and the requested treatment of spoken footage.
4. Select the smallest compatible skill set. Read the full instructions for each selected skill; do not ask the user to repeat rules already defined there.
5. Explain briefly which skills were selected and why, in plain language.

## If a reference video is supplied
1. Read and apply `reference-fidelity`.
2. Inspect the reference itself, not just its filename or the user's description. Analyze its editing grammar: composition, framing, scale changes, transitions, title/subtitle treatment, typography, colors, graphic elements, pacing, and sound cues.
3. Inspect the user's source video and map the reference techniques to actual spoken moments and visible framing. Do not invent timings or force a technique where it does not fit.
4. Separate the findings into:
   - techniques clearly identified in the reference;
   - techniques that can transfer to the source;
   - details that are uncertain or technically risky.
5. Ask only the questions needed to resolve genuine choices the user has not already answered. Offer concrete choices based on what was observed, for example: keep/adapt/exclude a transition, title style, subtitle style, sound effect, or crop. Do not ask the user to restate repository rules, selected skill rules, or preferences already stated in the current conversation.
6. Do not start the final edit until the user approves the selected direction, unless they explicitly ask to proceed without approval.

## If the source is talking-head or conversational footage
1. Read and apply `conversation-editing` when speech edits are requested or may be needed.
2. Establish whether the user wants to preserve the complete take, remove long pauses, clean false starts/repetitions/fillers, cut specified sections, select takes, or reorder sections.
3. If the policy is unclear, inspect the source and propose specific edits with source timecodes. Ask before meaning-changing or destructive cuts.
4. Keep source speech and captions aligned. Never rewrite the spoken content without permission.

## Choose additional skills only when relevant
- `face-preservation`: resizing, cropping, picture-in-picture, frame overlaps, masks, or foreground separation.
- `visual-constraints`: explicit brand rules, visual must-haves, and prohibited elements.
- `storyboard-generator`: multi-scene work or complex composition; use actual source frames where possible.
- `incremental-editing`: continuing an existing project or making revisions.
- `visual-quality`: final quality-control pass.
- `remotion-best-practices`: only when Remotion is the selected engine; load only the relevant references it points to.

Do not load every skill by default. Use one primary rendering engine unless there is a concrete technical reason to combine tools.

## Plan, approval, execution
1. Prepare a concise timecoded edit plan tied to actual source footage, including framing, text, motion, audio, and source in/out points where applicable.
2. For complex or technically uncertain effects, prepare a short representative proof and ask for approval.
3. Wait for approval before final rendering unless the user explicitly waives approval.
4. Execute, preview, quality-check, and export.
5. Reuse valid analysis and project artifacts; do not repeat work unnecessarily.

## Honesty and reporting
- Never invent unseen content, visual details, speech, or timestamps.
- State uncertainty and technical limitations before committing to an effect.
- Report exact output path and distinguish automated validation, visual inspection, and human listening.
- Never claim a skill or dependency was available or tested without checking the current environment.
