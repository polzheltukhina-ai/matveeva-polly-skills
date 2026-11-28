# Sound design and audio library selection

Use this reference only when the user requests music/SFX or the approved edit plan includes sound design. Sound design is a planned layer of the edit, not a last-minute collection of random effects.

## 1. Inventory the real project library first

1. Inspect the current project's configured audio-library paths and any user-provided library path. Reuse the path already configured; do not invent a drive letter or assume a library is connected.
2. If more than one plausible library exists, list the candidates and ask only when the correct source cannot be determined.
3. Reuse an existing index/cache when its source path and file state are still valid.
4. If no index exists, create a lightweight index in the project (not in this shared skills repository). Do not copy the audio files into the project or Git repository unless explicitly requested.
5. Inventory metadata in batches: relative path, filename, extension, duration, sample rate, channels, loudness/peak where available, and file size. Use existing metadata tools; do not decode/listen to every file by default.
6. Preserve original files. Do not rename, normalize, convert, or overwrite library assets.
7. Record source and rights/permission status. A file being present in a local folder does not prove it is royalty-free or cleared for commercial/social use.

Recommended project-local index fields:
- `id`: stable identifier derived from a normalized relative path;
- `path`: relative path from the configured library root;
- `filename`;
- `category`;
- `duration_seconds`;
- `format`, `sample_rate_hz`, `channels`;
- `peak_dbfs` and `integrated_lufs` when measurable;
- `tags` and `description` only when supported by filename, folder, metadata, or listening;
- `rights_status`: `cleared`, `user-confirmed`, `unknown`, or `not-applicable`;
- `last_indexed` and source-library identifier.

Do not infer detailed sound character from a filename alone. Mark uncertain descriptions as unverified until listened to.

## 2. Sound categories and event intent

| Category | Typical purpose | Example event |
|---|---|---|
| Whoosh / pass-by | Movement and spatial travel | Reframe, slide, object movement |
| Soft impact | Controlled arrival or emphasis | Headline or key phrase |
| UI click / tick | Small interface action | Toggle, selection, cursor action |
| Pop | Light element appearance | Card, label, small graphic |
| Glass / chime | Refined glass-like interaction | Glass panel or translucent card |
| Riser / swell | Build anticipation | Lead-in to a reveal |
| Swipe / scroll | Interface or list movement | Timeline or carousel motion |
| Digital texture | Technical workflow accent | Editing interface or data graphic |
| Orbit / spatial movement | Movement with depth | Orbiting media cards |
| Silence | Give speech or a visual moment room | Important line, pause, emotional beat |

These are semantic categories, not mandatory effects. Choose only a cue that supports the visible action and the creator's style.

## 3. Selection method

For each planned sound event:

1. Identify the visual event and its narrative purpose.
2. Search the index by category, tags, duration, and filename.
3. Shortlist a small number of candidates; do not scan the entire library.
4. Listen to the shortlisted candidates before final selection.
5. Check that the cue's attack, tail, texture, duration, and energy fit the animation.
6. Prefer an existing suitable cleared asset over downloading or generating a replacement.
7. If no suitable sound exists, use silence or ask before sourcing/generating new audio.

Avoid using the same whoosh/pop repeatedly for every event. Build a small, coherent sound vocabulary with controlled variation. Repetition is acceptable when it creates a deliberate motif, not when it is caused by limited selection.

## 4. Synchronization

- Tie each SFX to a specific visible event.
- Place the cue at the actual visual impact, arrival, reveal, or peak of motion, not automatically at the first frame of the animation.
- For a transition, align the sound to the moment of greatest movement or the point where the new composition resolves.
- For staggered cards or words, use separate cues only when the sequence benefits from them; do not create a click for every word or every frame.
- Preserve original diegetic sounds that are meaningful (for example, a real clap) unless the user asks to replace them.
- Avoid stacking several effects at the same instant. If layering is justified, keep one dominant cue and make supporting layers subtle.
- Recalculate cue timing after any edit that changes sequence duration or timing.

## 5. Mix and processing

- Voice is the priority and must remain intelligible.
- Do not add background music unless requested or approved in the edit plan.
- Do not let SFX mask consonants, word endings, breaths, or important speech.
- Set gain per cue; do not apply one global loudness value to every sound.
- Use short fades where needed to avoid clicks and abrupt tails.
- Avoid clipping and harsh transients. Check peak and true peak where tools support it.
- Do not promise a target LUFS unless the export requirements specify one.
- Do not pitch-shift, time-stretch, or heavily process the speaker's voice unless requested.
- Silence is a valid and often preferable design decision.

## 6. Sound design timeline and delivery record

For each selected cue, record:
- event ID and beat ID;
- visual event / spoken anchor;
- audio file ID and relative path;
- source and rights status;
- source in/out;
- timeline start and duration;
- gain;
- fade-in/fade-out;
- ducking or side-chain settings, if used;
- status: planned, selected, rendered, listened, or needs-review.

Store this in the project's edit plan or a project-local sound-design timeline. Do not store participant-specific audio paths in this shared repository.

## 7. Quality assurance

Separate automated checks from actual listening.

Automated checks may verify file existence, duration, stream format, sync, peak/clipping indicators, and successful full-file decode.

Human listening is required to confirm:
- the selected sound suits the animation;
- timing feels intentional;
- no cue is repetitive or distracting;
- voice remains clear;
- transitions sound smooth;
- tails and fades feel natural.

Never claim a sound was listened to if only metadata or waveform metrics were inspected. Report automated audio checks and human listening separately.

## 8. Rights and external sourcing

- Start with the participant's or creator's existing library.
- Record rights status; unknown means unknown.
- Do not assume a local file is cleared for commercial use.
- Do not download, purchase, subscribe to, or generate replacement sounds without user approval.
- If no suitable cleared sound exists, ask whether to proceed silently or use a source the user approves.

## 9. Music

Choose music by the video's tone and pace, not a fixed category-to-track mapping. Use participant-supplied/licensed tracks first. Confirm permission for commercial/social use before publication. If no suitable cleared track exists, ask whether to proceed without music or use a user-approved source.
