---
name: incremental-editing
description: Reuse existing video-project setup and analysis, make targeted changes, avoid redundant processing, and render only affected sections when safe.
---

# Incremental Editing

## Purpose
Reduce repeated analysis, setup, coding, and rendering while preserving a reliable final result.

## Inspect before changing
- Inspect the current project structure, scripts, dependencies, assets, and prior outputs.
- Identify the exact component or stage that needs changing.
- Do not recreate a working project or replace existing components without a reason.

## Reuse valid artifacts
Reuse transcripts, word timestamps, reference analysis, contact sheets, edit decision lists, fonts, configuration, and rendered assets only when:
- the underlying source file is unchanged;
- the relevant settings have not changed;
- the artifact is present and valid.

If source media or edit policy changes, invalidate only dependent artifacts. Keep a simple note of what was reused and what was regenerated.

## Targeted changes
- Make the smallest change that solves the reported issue.
- Avoid broad refactors during a visual correction.
- Do not re-run transcription or reference analysis for a purely visual adjustment.
- Do not re-read unrelated Skills or documentation.

## Rendering
- For a local visual/code change, render a representative section or affected range when the engine supports reliable range rendering.
- Re-render the complete final output after approval or when changes affect global timing, captions, audio, frame rate, or composition.
- Do not present a partial render as the final deliverable.
- Avoid duplicate full renders and unnecessary intermediate exports.

## Report
Summarize what changed, what was reused, what was regenerated, and what was revalidated. Never claim a cache or artifact was reused unless it was actually used.
