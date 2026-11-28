# Motion, transition and visual-component selection

This is a selection doctrine, not a claim that every named effect is already implemented. Before use, verify the component exists in the current project and can render in the selected engine.

## Selection rule

Choose a visual treatment in this order:
1. Explicit user instruction / approved reference.
2. Creator's brand guide and prohibited treatments.
3. Actual source-footage constraints (face, gestures, background, resolution, orientation).
4. Spoken meaning and narrative role.
5. Existing approved component.
6. Custom implementation only when the library has no suitable component.

A component is not selected because it looks impressive in isolation. It must make the current beat clearer, more persuasive, easier to follow, or more visually engaging without distracting from the speaker.

## Beat intent → treatment

| Beat intent | First choices | Use when | Avoid when |
|---|---|---|---|
| Hook / promise | Kinetic title, masked text reveal, editorial title | A concise opening idea is supported by the spoken content | Title invents a claim or hides the speaker |
| Key phrase / emotional turn | Kinetic typography, scale emphasis, restrained impact | A real spoken phrase deserves emphasis | Every sentence is treated as a climax |
| Explain a process | Animated infographic, step sequence, diagram | The process can be represented accurately | The diagram would invent steps or data |
| Show evidence / example | Asset card, screenshot, picture-in-picture, screen insert | A real supplied asset supports the statement | Asset is unrelated, illegible, or lacks permission |
| Compare / result | Split screen, before-after, comparison layout | Both sides are real and comparable | Missing values would need to be invented |
| Demonstrate product / workflow | Screen recording, UI mock only if clearly illustrative | The real product/interface is supplied or accessible | Fake UI could be mistaken for a real product |
| Add depth / dimensionality | Spatial orbit, layered cards, depth parallax | Several relevant objects can be arranged coherently | Objects are decorative or cover face/hands |
| Transform composition | Split-screen, editorial card, video window | Reframing clarifies a new chapter | Crop removes headroom or gestures |
| Subject overlap | Out-of-bounds / foreground cutout | Segmentation is available and clean on moving frames | Hair/hands/background make the mask unreliable |
| Quiet reflective beat | Minimal motion, clean cut, gentle camera move | Content benefits from restraint | Motion is added only to satisfy a fixed frequency |

## Component registry contract

Every implemented component should have a registry entry with:
- `id` and human-readable name;
- engine and component path;
- status: `implemented-tested`, `implemented-untested`, `reference-only`, or `unavailable`;
- purpose and narrative role;
- visual description / preview path;
- preconditions and required assets;
- editable parameters with safe defaults and ranges;
- duration / easing / direction behavior;
- face, gesture, caption and safe-zone constraints;
- compatible / incompatible components;
- sound cue hooks, if any;
- known limitations and last verified project/version.

Never present a `reference-only` idea as a ready-to-use effect. Never call a component tested without a render check in the current project.

## Coherence and density

- Choose a small visual vocabulary for each Reel: normally 2–4 primary treatments plus supporting text/camera changes, unless the reference requires more.
- Keep one clear hierarchy per frame: speaker, key text, or supporting insert. Do not make every layer compete.
- A visible change every 2–3 seconds is a useful review heuristic, not a mandatory animation quota. A clean cut, crop change, insert, caption emphasis, or meaningful stillness can count.
- Avoid repeating the same transition consecutively. Do not force transition variety if a clean cut is the best choice.
- Use 2–3 recurring transition families per Reel as a starting point; the reference and story may justify fewer or more.
- Every transition must preserve spatial continuity or communicate a meaningful chapter/energy change.
- Do not stack several effects on one beat unless the hierarchy remains obvious.

## Transition families

Treat these as candidate families; use only if implemented and verified:
- Clean cut / match cut.
- Push / slide / directional wipe.
- Zoom in / zoom out / zoom-through.
- Whip pan / motion blur.
- Mask reveal / panel reveal.
- Shape or shared-element morph.
- Blur transition.
- Flash / impact transition (rare, only when motivated).
- Split-screen / layout transition.

For a sequence, keep direction and motion grammar coherent. Do not alternate left/right/up/down randomly. A transition's outgoing motion should lead naturally into the incoming scene. Respect the selected engine's timing model and render determinism.

## Proof requirement

Require a short proof before full render when:
- effect depends on segmentation, masking, rotoscoping, or subject cutout;
- effect uses 3D, spatial orbit, complex perspective, or multiple moving layers;
- effect depends on tracking face/hands or object positions;
- reference match is uncertain;
- component is not verified in this project.

Proof must show the hardest moment, not merely an easy static frame.
