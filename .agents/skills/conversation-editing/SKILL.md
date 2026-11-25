---
name: conversation-editing
description: Edit talking-head and conversational footage: transcribe, remove approved pauses/fillers/repetitions, select or remove sections, preserve natural speech, and create a timecoded edit decision list.
---

# Conversation Editing

## Purpose
Prepare spoken-video footage for editing without changing the speaker's meaning, voice identity, or natural delivery.

## 1. Establish the requested edit policy
Determine which mode the user wants:
- **Keep original:** preserve the complete take and timing.
- **Trim long pauses:** remove only clearly excessive silence.
- **Clean speech:** remove approved false starts, repeated words, filler words, and stumbles.
- **Remove sections:** cut user-specified topics, phrases, or time ranges.
- **Select takes:** choose the strongest complete delivery from multiple takes.
- **Reorder:** rearrange sections only when explicitly requested.

Do not assume the user wants all pauses or filler words removed. If unspecified, inspect and recommend conservative edits with source timecodes; ask before cuts that change meaning, rhythm, or emphasis.

## 2. Transcription
- Transcribe the actual source; do not reconstruct speech from context.
- Preserve original wording in captions unless the user explicitly requests copy editing.
- Keep word- or phrase-level timestamps when available.
- Flag uncertain words for human confirmation instead of silently guessing.
- Reuse a valid saved transcript if the source file is unchanged.

## 3. Edit decision list
Create a timecoded edit decision list with:
- source in/out;
- action (keep, remove, shorten, reorder);
- reason;
- expected output position;
- any uncertainty requiring approval.

Keep audio and video edits aligned. Do not create jump cuts that break lip sync.

## 4. Natural continuity
- Preserve breaths, emphasis, pauses that carry meaning, and conversational rhythm.
- Avoid over-tightening speech into an unnatural pace.
- Use short audio fades/crossfades where needed to prevent clicks.
- Do not time-stretch, pitch-shift, denoise, or alter voice tone unless requested.
- Do not add music or SFX unless approved.

## 5. Approval
Show the proposed edit list before applying ambiguous or meaning-changing cuts. User-approved exact cuts can proceed without asking again.

## 6. Validation
Check that:
- no intended words are cut off;
- audio and video remain synchronized;
- edits do not create clicks or abrupt ambience changes;
- captions reflect the retained spoken words;
- final duration matches the edit plan.

Report which checks were automated and which were listened to by a person.
