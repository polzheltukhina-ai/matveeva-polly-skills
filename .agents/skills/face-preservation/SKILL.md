---
name: face-preservation
description: Preserve a person's face, headroom, and meaningful gestures during reframing, resizing, picture-in-picture layouts, masks, and foreground separation.
---

# Face Preservation

## Purpose
Keep the speaker clearly visible when the video is cropped, resized, placed inside a frame, or composited over a new background.

## Before compositing
- Inspect source frames at the moments where composition changes.
- Identify face position, hair/head outline, shoulders, hands, and meaningful gestures.
- Define a safe subject region with enough headroom.
- Prefer scaling the complete source frame over cropping when the full person must remain visible.

## When subject breaks frame boundaries
If the approved design requires the head or body to extend beyond a video window:
- use a foreground mask/segmentation workflow only if available and suitable;
- keep the original subject pixels and source color;
- place the foreground subject layer above the background/window layer;
- check hair edges, ears, shoulders, and moving hands for mask artifacts;
- do not invent or reconstruct facial details.

Do not fake this effect by simply clipping the video or enlarging a crop.

## Proof and validation
For complex masking, create a short proof showing the most difficult movement and head position. Inspect multiple frames, not just one still. Verify that the face is never unintentionally cropped, obscured, stretched, or visibly distorted.

If clean segmentation is not feasible, explain the limitation and offer a composition that preserves the full face without the overlap effect.
