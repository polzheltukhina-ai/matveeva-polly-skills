# Индекс навыков

Статусы: **AVAILABLE** — SKILL.md лежит в рабочей директории и обнаруживается Codex; зависимости и фактическая работа ещё могут требовать проверки. **IMPORTED_REFERENCE** — исходные материалы сохранены в third-party. **CATALOG_ONLY** — каталог внешних проектов, не Skill. **PLANNED** — предстоит разработать. **TESTED** — прошёл реальный тест в конкретной среде. На данный момент ни один внешний движок/Skill не помечен TESTED.

## Repo-local Skills

| Категория | Skill | Статус |
|---|---|---|
| Remotion | remotion-best-practices | AVAILABLE |
| GSAP | gsap-core, gsap-timeline, gsap-plugins, gsap-react, gsap-performance, gsap-scrolltrigger, gsap-utils, gsap-frameworks | AVAILABLE |
| HyperFrames | hyperframes-captions-overlay, hyperframes-motion-doctrine, hyperframes-seam-craft | AVAILABLE |
| Motion Design | howseen-motion-design | AVAILABLE |
| Product Motion | product-launch-motion-legacy, product-launch-motion-v2 | AVAILABLE |
| Orchestration | video-director | AVAILABLE |
| Pre-production | storyboard-generator | AVAILABLE |
| Quality | visual-quality | AVAILABLE |
| Авторский формат | mult-marketing | AVAILABLE |

## Plugin package
- Portable plugin: `plugins/matveeva-video/`
- Primary bundled skill: `polly-video-studio`
- Specialist skills are bundled alongside it.
- Plugin package created, but not yet imported/synced into ChatGPT account or submitted to the universal plugin directory.

## Catalogues and pending work
| Source / task | Status | Notes |
|---|---|---|
| awesome-claude-video-skills | CATALOG_ONLY | Discover individual projects; audit each separately |
| User archive `Скиллы 1.zip` | NOT_FULLY_IMPORTED | ZIP contains 32 files including a Remotion SKILL.md, references, and TSX examples. Official Remotion Best Practices is included separately; exact ZIP contents still need a dedicated import pass. |
| 13 editing techniques discussed earlier | PLANNED | Exact list/source examples not found in the accessible files; do not invent names |
| Platform safe-zone reference | PLANNED | Maintain platform-specific, dated measurements |
| Contact-sheet renderer | PLANNED | Need implementation and real test |

Never label a skill TESTED without a named environment, versions, and recorded test result.
