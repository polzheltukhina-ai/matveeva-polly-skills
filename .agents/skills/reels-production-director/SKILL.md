---
name: reels-production-director
description: Main production orchestrator for Reels. Intake source footage, optional references and asset libraries; analyze once, create an edit plan, select existing motion/transition/sound components, execute with verified installed tools, iterate locally and deliver a checked MP4.
---

# Reels Production Director

Use for end-to-end Reels editing when the user supplies source footage, optionally a reference video and/or additional assets. This is the main entry point; it routes to specialist skills instead of loading every skill.

## FAST PATH — default for ordinary Reels

Most participant videos are simple talking-head edits. Prefer the shortest working route:
1. Reuse the current Reels-studio project and its last known-good render command.
2. Reuse existing transcript/word timestamps and caption components when available. Transcribe only if no valid transcript exists for this source.
3. Read the user's brief and source once. Make a compact beat list; do not create a full storyboard, asset database, or multi-stage approval package unless the brief needs it.
4. Choose at most 1–3 relevant motion components and only the transitions/sounds that add meaning. A clean cut and existing captions are valid design choices.
5. Read only the one relevant Remotion reference for the implementation. Do not reload all Remotion skills or inspect the entire repository.
6. Do not run environment/version/dependency audits on each video. Trust the cached known-good setup; investigate only a concrete error or a newly required feature.
7. For ordinary, already-tested components, implement and render directly when the user requests the edit. Use a short proof only for a new, risky, or unverified effect.
8. After a visual revision, reuse transcript and edit timing. Change only the relevant component/parameters and rerender the affected section when reliable.
9. Validate output existence, decode, dimensions, and duration. Do not run expensive broad QA unless requested or an issue is suspected.

## Operating principles

1. **Source-first.** The supplied footage, speech, reference, and user assets are the only factual sources. Never invent quotes, results, screenshots, logos, product UI, or visual evidence.
2. **Plan before render.** The agent creates and maintains one project `plan.json`. Tools execute that plan; do not scatter per-shot decisions across shell commands or hard-code them in components.
3. **One primary engine.** Prefer the already working engine in the current project. Remotion is the default for React-based compositions and reusable motion components. Use HyperFrames only when its CLI, project structure, and requested workflow are verified in this environment. Do not combine engines merely for variety.
4. **Library-led, not random.** Select from the approved motion, transition, and sound catalogues. Do not invent a new effect when a suitable tested component exists. Add a new component only when the brief genuinely requires something absent.
5. **Brand is per creator.** Read the creator's own `BRAND.md` / brand assets. Never impose Polly's personal style on participants.
6. **Reuse work.** Cache valid transcripts, reference analysis, asset catalogues, contact sheets, plans, and renders. Recompute only artifacts invalidated by changed inputs.
7. **Honest capability checks.** A Skill is not an installed runtime. Verify only the dependencies needed for this project and effect. Never claim a tool, model, component, or render works without checking it.

## Phase 1. Intake and project setup

1. Locate the actual source video(s) in current attachments/workspace or the exact user-provided location. Do not guess filenames or silently choose among multiple candidates.
2. Identify optional reference video(s), extra photos/videos/screenshots/logos/audio, brand guide, desired platform/format, duration, and speech-edit policy.
3. Ask one concise question only if a missing detail blocks safe progress. If the speech policy is unspecified, inspect and recommend conservative edits; do not remove meaning-bearing speech without approval.
4. Create or continue a project folder using a stable project ID. Copy source files into `input/raw/`; never modify originals.
5. Catalogue assets in `analysis/assets.json`: path, media type, dimensions/duration, source, intended use if known, rights/permission status if known, and whether content contains personal data. Do not assume an asset is approved for publication merely because it was uploaded.
6. Read creator-specific brand settings. If absent, ask for the minimum necessary style choices or propose a neutral draft for approval. Do not invent brand fonts/colors.

Suggested project layout:
```text
projects/<project-id>/
  input/raw/             # immutable copies of source and reference
  input/assets/          # participant-supplied media
  brand/                 # BRAND.md and brand assets, if supplied
  analysis/              # transcript, reference map, asset catalogue, contact sheets
  edit/                  # plan.json and edit decision list
  renders/               # proofs and intermediate renders
  output/                # approved final export
  reports/               # QA and version notes
```

## Phase 2. Capability and engine check

Check the current environment once during initial setup, then cache the report. On subsequent videos, skip this section unless a concrete failure occurs or the user requests a feature requiring a new dependency:
- FFmpeg and ffprobe availability/version and required codecs/filters.
- Python environment and the actual speech package/model available.
- Remotion project, installed package version, available composition entry point, and render command.
- HyperFrames package/CLI/version and a working project example, only if considering HyperFrames.
- Required fonts, images, masks/segmentation tools, audio files, and motion components.
- Available compute, network, and model cache only if relevant.

### Speech recognition policy

- Prefer the project's already configured local Whisper implementation. In Reels-studio this is Faster-Whisper via `scripts/transcribe.py`, with word timestamps; verify it exists in the current workspace before use.
- Reuse supplied `words.json` / transcript if source checksum and settings match.
- Do not add Groq or another paid API as a default. Do not silently download a new model or switch providers.
- If Whisper/model is missing or unavailable, report the exact blocker and ask before installing or using another provider.
- After cuts, regenerate or retime captions from the final clean edit; never reuse raw-source timings blindly.

### Engine decision

- **Remotion:** default for talking-head Reels, subtitles, React compositions, reusable components, and most motion graphics when the project already renders.
- **HyperFrames:** select only when its installed version and project pipeline are verified and it offers a concrete advantage for this edit. A package dependency alone does not prove a working renderer.
- **FFmpeg/Python:** use for media probing, audio/video cutting, normalization, muxing, contact sheets, and validation. They are supporting tools, not a substitute for a motion-composition engine.
- **GSAP:** use inside a selected HTML/React workflow where its runtime and deterministic rendering path are confirmed. Do not start a separate GSAP project for a simple Remotion edit.

Record the selected engine and why in `reports/environment.json`.

## Phase 3. Analyze inputs once

### Source footage
- Probe duration, frame rate, dimensions, orientation, audio streams, codec, and color/HDR characteristics.
- Inspect representative frames and the speaker's face, headroom, hands, gestures, and background at planned composition changes.
- Transcribe with word timestamps only if needed. Keep full transcript on disk; show the user only relevant short excerpts and uncertain words.
- Separate measurable silence from ASR timestamp estimates. Do not cut solely because Whisper timestamps suggest a pause.
- Create a source-to-output edit decision list with source in/out, action, reason, and confidence.
- Preserve breathing, emphasis, natural rhythm, and word endings. Use a conservative tail guard and verify cuts by listening/inspection; do not blindly copy a fixed millisecond value from another pipeline.

### Reference footage
- Inspect the actual reference, not only a description or filename.
- Record observable editing grammar: shot scale, crop, composition, text hierarchy, motion, transition, pacing, color, and sound.
- Label each feature as observed, estimated, or unknown.
- For each technique choose **keep / adapt / exclude**, with a reason based on source footage and brand rules.
- Transfer mechanics, not the reference's wording, claims, logos, or unrelated identity.
- Reuse an existing compact reference map if the file and map still match; do not repeat analysis unnecessarily.

### Assets
- Match each proposed insert to a spoken phrase or visual purpose.
- Prefer participant-supplied assets and relevant existing project assets.
- Never fabricate proof, testimonials, numbers, screenshots, logos, or product interfaces.
- If no real visual support exists, use an appropriate typography/diagram treatment or a reframing change; do not add irrelevant stock footage.

## Phase 4. Build the edit plan

Create/update `edit/plan.json` as the single source of truth. Keep large transcripts and asset metadata in separate files and reference them by path/checksum.

Required plan sections:
- project/source metadata and checksums;
- format, dimensions, fps, target duration;
- speech edit policy and approved source ranges;
- transcript reference and caption timing source;
- reference decisions (keep/adapt/exclude);
- brand tokens and hard constraints;
- scene/beat timeline with source time ranges;
- per-beat visual intent and chosen component IDs;
- transition IDs and parameters;
- insert asset paths and spoken-word anchors;
- sound/music IDs, timing, gain, rights status;
- safe zones and face/gesture constraints;
- engine, component versions, and render settings;
- approvals, unresolved questions, and QA status.

Every planned visual change must have a purpose: explain, prove, emphasize, guide attention, create a transition, or support rhythm. Avoid decorative effects without a reason.

## Phase 5. Select motion and transitions

Load `references/motion-library-selection.md` only when choosing visual effects or transitions.

Selection order:
1. User's explicit reference requirements.
2. User's brand guide and prohibited elements.
3. What the actual footage can support.
4. Meaning and narrative purpose of the spoken moment.
5. Approved library component that best fits.
6. A new custom component only if no existing component fits and the user approves its design/proof.

Do not select by effect name alone. Match the effect's preconditions, visual hierarchy, direction, timing, screen position, and complexity. Prefer a small coherent set of effects over maximum variety. Avoid repeating the same transition consecutively, but preserve a consistent transition grammar across the film.

Before coding, name the chosen component IDs and map each to the exact source moment. If a component is only documented but not implemented/tested in the current project, label it unverified and create a short proof before full use.

## Phase 6. Speech, music and sound

- Load `references/sound-design-library.md` when adding or choosing music/SFX.
- Use existing local audio libraries when available and rights are clear.
- Choose sound by the visual event and emotional intent, not by filling every gap.
- Keep voice intelligible and dominant. Duck music under speech; avoid clipping, harsh peaks, and abrupt tails.
- Align effects to the animation's actual impact/peak, not merely the start of the cue.
- Do not add music/SFX unless requested or included in the approved plan.
- Recheck audio after every edit that changes duration or timing.
- Do not claim audio was listened to if only automated metrics were checked.

## Phase 7. Approval gates

Use approval gates only for consequential uncertainty. Routine choices should not interrupt the workflow:

1. **Edit gate:** approval is required only for meaning-changing or ambiguous speech cuts.
2. **Direction gate:** skip for ordinary edits with a clear brief; use a short beat list internally.
3. **Proof gate:** use only for new, risky, or unverified effects.
4. **Final gate:** provide the export and a concise truthful QA note.

Simple edits with explicitly approved settings can skip the direction gate, but not basic validation.

## Phase 8. Build, iterate and deliver

1. Implement the approved plan using the selected engine and existing components.
2. Render a short proof for complex effects (segmentation, out-of-bounds, 3D, multi-layer composites, advanced transitions).
3. Inspect proof frames and audio. Fix observed issues before full render.
4. For revisions, change only the affected plan fields/components. Do not re-transcribe or re-analyze references for purely visual changes.
5. Re-render only affected ranges when the engine supports reliable partial rendering. Full render is required when global timing, captions, audio mix, or composition changes.
6. Validate output existence, full decode, dimensions, fps, codec, duration, audio sync/continuity/clipping, caption timing/safe zones, and required visual constraints.
7. Report separate statuses: automated checks, visual inspection, human audio listening, and unverified items. Never claim visual/audio review that did not happen.
8. Save final export in `output/` and preserve source media and credentials outside Git history.

## Routing

- Speech cuts/continuity: `conversation-editing`.
- Reference analysis: `reference-fidelity`.
- Face/crop/masks/foreground separation: `face-preservation`.
- Brand constraints: `visual-constraints`.
- Remotion implementation: `remotion-best-practices` plus only relevant Remotion references.
- HyperFrames implementation: relevant HyperFrames skills only after runtime verification.
- Complex multi-scene planning: `storyboard-generator` when needed.
- Existing-project revisions: `incremental-editing`.
- Final review: `visual-quality`.

Do not preload all specialist skills. State selected skills and why briefly.
