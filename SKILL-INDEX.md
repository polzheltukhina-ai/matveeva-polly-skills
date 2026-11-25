# Индекс навыков

## Статусы

- **AVAILABLE** — файл SKILL.md находится в `.agents/skills` и доступен Codex для обнаружения. Это не означает, что зависимости установлены или навык прошёл тест.
- **IMPORTED_REFERENCE** — исходные материалы сохранены в `third-party/`, но не являются самостоятельным запускаемым Skill.
- **CATALOG_ONLY** — каталог внешних проектов для поиска, не исполняемый Skill.
- **PLANNED** — авторский навык ещё предстоит разработать.
- **TESTED** — прошёл реальный тест в указанной среде с зафиксированными версиями и результатом. Пока ни один навык не имеет этого статуса.

## Skills в репозитории

| Категория | Skill | Источник | Статус | Примечание |
|---|---|---|---|---|
| Remotion | remotion-best-practices | remotion-dev/skills | AVAILABLE | Требуется проверка зависимостей и работы в Cloud |
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

## Каталоги, пользовательские материалы и планы

| Source / Skill | Status | Use |
|---|---|---|
| awesome-claude-video-skills | CATALOG_ONLY | Каталог для поиска; каждый проект нужно отдельно проверять |
| Пользовательский архив Remotion («Скиллы 1.zip») | NOT_IMPORTED | Архив был изучен в рамках подготовки starter, но его полное содержимое пока не опубликовано в этом GitHub-репозитории |
| 13 creative editing techniques | PLANNED | Оформить отдельными Skills после сверки с исходным материалом урока |
| 13 motion/effect techniques | PLANNED | Хранить отдельно от creative editing techniques |
| platform-safe-zones | PLANNED | Платформенные рекомендации с датами и источниками |
| storyboard contact-sheet renderer | PLANNED | Нужна реализация и тестирование генерации визуальной раскадровки |

## Правило качества

Никогда не помечай Skill как TESTED без реального теста в конкретной среде (Codex Desktop или Codex Cloud), с зафиксированными версиями и результатом. Не обещай, что любой Skill автоматически заработает в любом окружении.
