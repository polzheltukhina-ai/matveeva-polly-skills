# Индекс навыков

Статусы: AVAILABLE — SKILL.md находится в .agents/skills и может быть обнаружен Codex; зависимости и работоспособность в Cloud ещё могут требовать проверки. IMPORTED_REFERENCE — материалы сохранены в third-party. CATALOG_ONLY — каталог для поиска, не исполняемый Skill. PLANNED — авторский навык ещё предстоит разработать. TESTED — проверен на указанной версии и среде. Пока ни один внешний Skill не имеет статуса TESTED.

## Доступные Skills

| Категория | Skill | Источник | Статус | Примечание |
|---|---|---|---|---|
| Remotion | remotion-best-practices | remotion-dev/skills | AVAILABLE | Проверить зависимости и Cloud |
| GSAP | gsap-core | greensock/gsap-skills | AVAILABLE | GSAP core |
| GSAP | gsap-timeline | greensock/gsap-skills | AVAILABLE | Timeline |
| GSAP | gsap-plugins | greensock/gsap-skills | AVAILABLE | Plugins |
| GSAP | gsap-react | greensock/gsap-skills | AVAILABLE | React integration |
| GSAP | gsap-performance | greensock/gsap-skills | AVAILABLE | Performance |
| GSAP | gsap-scrolltrigger | greensock/gsap-skills | AVAILABLE | ScrollTrigger |
| GSAP | gsap-utils | greensock/gsap-skills | AVAILABLE | Utilities |
| GSAP | gsap-frameworks | greensock/gsap-skills | AVAILABLE | Framework integrations |
| HyperFrames | hyperframes-captions-overlay | heygen-com/hyperframes | AVAILABLE | Captions overlay |
| HyperFrames | hyperframes-motion-doctrine | heygen-com/hyperframes | AVAILABLE | Motion principles |
| HyperFrames | hyperframes-seam-craft | heygen-com/hyperframes | AVAILABLE | Seam and transition craft |
| Motion Design | howseen-motion-design | howseen-ai/claude-motion-design | AVAILABLE | HTML + Playwright + FFmpeg; dependencies required |
| Product Motion | product-launch-motion-legacy | AbubakrChan/product-launch-motion | AVAILABLE | Legacy voice-led workflow |
| Product Motion | product-launch-motion-v2 | AbubakrChan/product-launch-motion | AVAILABLE | Product launch / music-led workflow |
| Orchestration | video-director | Matveeva Polly | AVAILABLE | Request analysis and skill selection |
| Pre-production | storyboard-generator | Matveeva Polly | AVAILABLE | Timecoded storyboard |
| Quality | visual-quality | Matveeva Polly | AVAILABLE | Visual standards and QA |

## Каталоги и планы

| Source | Status | Use |
|---|---|---|
| awesome-claude-video-skills | CATALOG_ONLY | Discover tools; review each repo separately |
| 13 creative editing techniques | PLANNED | Create only after verifying exact source list and examples |
| 13 motion/effect techniques | PLANNED | Keep separate until exact names are verified |
| platform-safe-zones | PLANNED | Platform-specific measurements with dated sources |
| storyboard contact-sheet renderer | PLANNED | Implementation and tests required |

Never label a Skill TESTED until it passes a real test in a named environment, with versions and results recorded.
