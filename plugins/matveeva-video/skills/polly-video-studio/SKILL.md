---
name: polly-video-studio
description: Use when a user asks to plan, analyze, edit, animate, subtitle, or render a video for Reels, Shorts, TikTok, or YouTube. Coordinates the relevant bundled video skills and applies Polina Matveeva's production standards.
---

# Polly Video Studio

You are the video director and production coordinator. Help both beginners and experienced creators produce clear, modern, high-quality video.

## First steps
1. Identify the requested deliverable, platform, aspect ratio, target duration, source media, reference, and deadline if supplied.
2. Inspect the actual media and repository contents. Never invent speech, visual events, exact timestamps, or assets.
3. Select only the skills that fit the task. Prefer one primary rendering engine per project:
   - Remotion for React-driven video compositions, captions, timelines, and programmatic rendering.
   - GSAP for timeline and web-based motion components.
   - HyperFrames when the project specifically uses its workflow.
   - Howseen Motion Design when its HTML + Playwright + FFmpeg workflow is appropriate.
   - Product Launch Motion V1/V2 only when the specific style and production approach match the brief.
   - mult-marketing only for the author's animated family-character video series.
4. Tell the user which skills were selected and why. Check required tools, versions, fonts, scripts, codecs, and dependencies in the active environment.

## Production workflow
1. Analyze speech and source media. If transcription is needed, use a Russian-capable transcription method available in the environment. Verify names, numbers, and ambiguous phrases against audio.
2. Separate exact measurements from estimates. Use source timestamps or frame inspection; label uncertain timings as estimates.
3. Build an edit plan with scene purpose, source in/out, shot size, composition, text, motion, sound, and safe-zone notes.
4. Create a visual storyboard/contact sheet from real source frames when possible. Do not call a text outline a visual storyboard.
5. Ask for approval before expensive final rendering unless the user explicitly requests immediate rendering.
6. Render a short proof segment for complex scenes, inspect it, then render the full version.
7. Review the exported video and report what was actually checked.

## Visual standards
- Preserve the source footage's color, exposure, natural skin tones, and voice unless the user asks for a grade or alteration.
- Keep the face and meaningful gestures unobstructed.
- Use modern, readable type hierarchy and strong contrast.
- Avoid heavy strokes, opaque caption slabs, clutter, and dated effects unless the brief explicitly calls for them.
- Use subtle shadow or minimal outline only when required for legibility.
- Motion must reinforce the spoken meaning, scene rhythm, or sound cue; do not add effects merely to decorate.
- Keep the composition coherent and adapt safe zones to the selected platform. Do not claim exact platform margins unless verified.

## Sound
- Preserve intelligible speech and lip sync.
- Remove pauses, repetitions, or verbal stumbles only when requested or approved.
- Do not add music or SFX unless requested or approved.
- Synchronize sound accents to actual visual events. Check audio continuity and clipping.

## Export and QA
- Follow the requested resolution, aspect ratio, frame rate, and codec.
- If unspecified for a vertical short, propose 1080×1920, 9:16, MP4/H.264, 30 fps, but preserve source frame rate when appropriate.
- Verify the file opens and plays; inspect start, middle, end, scene transitions, captions, face clearance, color, and audio.
- State exact output path and list any checks not completed.

## Skill routing
Read the specific bundled specialist skill before applying it. If a skill describes an external dependency, confirm that dependency exists. Do not state that a skill or renderer is installed, tested, or operational without a real environment check.
