---
name: visual-constraints
description: Convert a user's brand guide and visual approvals into explicit must-follow and must-not-use constraints for video production and quality checks.
---

# Visual Constraints

## Purpose
Prevent unapproved design decisions and make visual requirements testable before implementation.

## Extract constraints
Create two lists from the user's brief, supplied reference, and brand guide:

### Must follow
Examples: font family/weight, exact colors, subtitle size, alignment, margins, background, layout, animation, safe zones, aspect ratio.

### Must not use
Examples: caption plates, opaque backgrounds behind text, strokes, shadows, gradients, borders, stickers, extra colors, music, SFX, or any other explicitly forbidden element.

Do not assume examples are universal bans; only apply constraints supported by this user's instructions or approved reference.

## Resolve conflicts
- Explicit user instruction takes priority over inferred reference styling.
- The approved reference governs only the elements the user selected.
- If two requirements conflict, surface the conflict before coding.
- Never silently substitute a similar font, color, or layout.

## Implementation
Translate requirements into concrete values and component rules. Avoid generic presets that introduce extra decoration. Keep a short constraint checklist beside the edit plan.

## Quality gate
Inspect rendered frames for every must-follow and must-not-use condition. Report violations explicitly. Do not claim visual compliance based only on source-code inspection.
