# AGENTS.md — Matveeva Polly Video Skills

## Goal
Create modern, aesthetic, dynamic videos for Reels, Shorts, TikTok, and YouTube. Support beginners by explaining decisions plainly. The repository contains skills, references, and a packaged plugin; it is not itself a rendering engine.

## Mandatory workflow
1. Identify deliverable, platform, aspect ratio, duration, source files, and reference.
2. Inspect the actual source media and repository files. Never invent speech, visuals, timecodes, or source assets.
3. Read SKILL-INDEX.md and inspect the relevant .agents/skills/<name>/SKILL.md files.
4. Select the smallest compatible set of skills. Prefer one primary rendering engine per project.
5. Explain selected skills and dependencies.
6. Prepare a timecoded edit plan and visual storyboard/contact sheet from actual source frames where possible.
7. Obtain approval before final rendering unless the user explicitly waives approval.
8. Render a short proof for complex motion, inspect it, then render the final output.
9. Verify the exported file and report exactly what was and was not checked.

## Visual quality
- Preserve source color, exposure, skin tones, and sound unless changes are requested.
- Keep faces, hands, and meaningful gestures clear.
- Use contemporary, readable typography and strong contrast.
- Avoid heavy strokes, opaque caption slabs, clutter, and dated effects unless requested.
- Use subtle shadow or minimal outline only when needed for readability.
- Motion should support meaning, rhythm, or a sound event, not decorate randomly.
- Apply platform-specific safe zones; do not invent exact measurements.

## Speech and sound
- Keep the original meaning and wording.
- Remove pauses, repetitions, or stumbles only when requested or approved.
- Do not add music/SFX unless requested or approved.
- Verify audio continuity, sync, clipping, and intelligibility.

## Engine selection
- Remotion: React-driven video compositions, captions, sequences, and rendering.
- GSAP: animation timelines and web-based motion components.
- HyperFrames: only when its workflow matches the project.
- Howseen Motion Design: HTML + Playwright + FFmpeg workflow.
- Product Launch Motion: choose V1 or V2 based on the actual brief.
- mult-marketing: only for the author's animated family-character series.
Do not combine engines without a clear technical reason.

## Environment honesty
- Check actual Node, package manager, FFmpeg, browser, fonts, codecs, and installed packages before rendering.
- A skill file does not install its runtime dependencies.
- Never claim a skill is tested or available in Cloud without a real check in that environment.
- Never claim an export is complete until the output file exists and playback has been verified.

## Export
Follow the user brief. If unspecified for a vertical short, propose MP4/H.264, 1080×1920, 9:16, 30 fps, while preserving source FPS when appropriate.
