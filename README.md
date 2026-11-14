<div align="center">

# Syllabus

Расписание колледжа ОКЭИ. Пары, замены, звонки, будильник к первой паре.
Неделя грузится один раз, дальше приложение работает без сети.

```text
┌─────────────────────────────────────────────────────────────────┐
│ $ syllabus --week                                               │
│ ПОНЕДЕЛЬНИК · 16.11 · неделя 3                                  │
│  1  08:30–10:00  УП. 05 Учебная практика                        │
│  2  10:10–11:40  УП. 05 Учебная практика                        │
│  3  12:00–13:30  УП. 05 Учебная практика                        │
│  ВТОРНИК · 17.11 — пар нет                                      │
│                                                                 │
│ $ syllabus --alarm                                              │
│ 07:30 · за 2 часа до первой пары · 4 сигнала                    │
│                                                                 │
│ $ ./build.ps1                                                   │
│ Готово: dist/okei-schedule-v20.2.apk · 405 КБ · подписан        │
└─────────────────────────────────────────────────────────────────┘
```

[![Android 5.0+](https://img.shields.io/badge/Android-5.0%2B-black?style=flat-square&logo=android&logoColor=white)](#требования)
[![minSdk 21](https://img.shields.io/badge/minSdk-21-black?style=flat-square)](#требования)
[![build](https://github.com/Polusladky/Syllabus/actions/workflows/build.yml/badge.svg)](https://github.com/Polusladky/Syllabus/actions/workflows/build.yml)
[![release](https://img.shields.io/github/v/release/Polusladky/Syllabus?style=flat-square&label=release&color=black)](https://github.com/Polusladky/Syllabus/releases/latest)

[![Smali](https://img.shields.io/badge/Smali-Dalvik%20assembly-black?style=flat-square)](#как-это-устроено)
[![Java 8](https://img.shields.io/badge/Java-8-black?style=flat-square&logo=openjdk&logoColor=white)](#как-это-устроено)
[![PowerShell 5.1](https://img.shields.io/badge/PowerShell-5.1-black?style=flat-square&logo=powershell&logoColor=white)](#сборка)
[![Python 3](https://img.shields.io/badge/Python-3-black?style=flat-square&logo=python&logoColor=white)](#проверка-сборки)
[![MIT](https://img.shields.io/badge/license-MIT-black?style=flat-square)](LICENSE)

</div>

## Скриншоты

| Расписание | Светлая тема | Настройки |
|:---:|:---:|:---:|
| <img src="docs/screenshots/main-dark.png" width="260"> | <img src="docs/screenshots/main-light.png" width="260"> | <img src="docs/screenshots/settings.png" width="260"> |

## Возможности

- **Неделя целиком** — дни с датами, номера пар, начало и конец, перемены с длительностью.
- **Замены с сайта** — отдельный разбор страницы замен, изменённые пары подсвечиваются.
- **Будильник к первой паре** — за 2 часа, свой звук или системный сигнал, вибрация,
  свайп-ползунки «выключить» и «отложить на 5 минут».
- **Виджеты** — 4×2 и компактный, рисуются вручную шрифтом приложения.
- **«Сейчас» и «следующая пара»** — отдельные экраны свайпом, с таймером до конца пары.
- **Архив недель** — каждая загруженная неделя открывается без сети.
- **Поделиться** — расписание картинкой или текстом.
- **Тёмная и светлая темы** — монохром, пиксельный шрифт Tiny5, без скруглений и теней.
- **Бот MAX** — расписание можно тянуть из чата «МАКС», если сайт недоступен.
- **Диагностика** — парсер, будильники, разрешения, журнал ошибок.

Без AndroidX и Gradle: только фреймворк, свои View, шрифт в assets. APK — около 400 КБ.

## Установка

1. Скачайте APK из [Releases](https://github.com/Polusladky/Syllabus/releases/latest).
2. Разрешите установку из этого источника.
3. Укажите группу — код как на сайте колледжа, например `3ИС3`.

> [!TIP]
> Группу можно сменить в настройках, старые недели останутся в архиве.

**Требования:** Android 5.0 (API 21) и новее.

> [!IMPORTANT]
> Это не официальный источник расписания. Данные берутся с сайта колледжа, возможны
> задержки и ошибки разбора — сверяйтесь с сайтом и уточняйте в чате «МАКС» или у куратора.

## Сборка

Нужен Windows 10+ с PowerShell и `curl.exe`, остальное скачивается само:

```powershell
powershell -ExecutionPolicy Bypass -File tools\setup-toolchain.ps1   # JDK 17, build-tools 34, apktool 2.11.1
.\build.ps1
```

Скрипт собирает `patch/fixsrc` в `classes2.dex`, пересобирает smali и ресурсы через apktool,
добавляет вторую dex, выравнивает и подписывает APK. Результат — `dist/okei-schedule-v<версия>.apk`,
лог — `logs/last-run.txt`.

> [!WARNING]
> Ключ подписи в репозитории не лежит. Положите свой в `keystore/syllabus.keystore` и пароль
> в `keystore/keystore-pass.txt`, либо укажите пути: `-Keystore`, `-KeystorePassFile`
> (или переменные `SYLLABUS_KEYSTORE`, `SYLLABUS_KEYSTORE_PASS_FILE`).
> Без ключа соберётся неподписанный APK.

## Проверка сборки

```bash
python tools/apk_report.py dist/okei-schedule-v20.2.apk
python tools/apk_report.py new.apk --compare dist/okei-schedule-v20.2.apk
```

Печатает размер, SHA-256, список dex и наличие подписи; с `--compare` — какие записи
отличаются от эталона. Только стандартная библиотека Python 3.

## Как это устроено

Приложение на **Java 8**. В репозитории оно лежит в виде **smali** — ассемблера Dalvik,
полученного при восстановлении APK. Это артефакт пересборки, а не исходный язык проекта.

Логика разбирает страницу расписания в `WeekSchedule`, `DaySchedule` и `Lesson`, кладёт
результат в кэш и дальше работает офлайн. Замены разбираются отдельно и накладываются
на неделю. Будильники ставятся через `AlarmManager` на первую пару дня, звук играет
`MediaPlayer` с `USAGE_ALARM`.

Новые классы пишутся на Java в `patch/fixsrc/`, компилируются в `classes2.dex` и вызываются
из smali — править логику так проще, чем руками.

> [!NOTE]
> GitHub не считает smali языком проекта: `.gitattributes` помечает `app/smali` как
> `linguist-vendored`. В статистике остаются Java, PowerShell и Python.

## Структура

```text
app/                 smali, ресурсы, AndroidManifest.xml, apktool.yml — то, что собирается в APK
patch/fixsrc/        Java-классы, которые уходят в classes2.dex
patch/stubs/         заглушки для компиляции этих классов
tools/               setup-toolchain.ps1, apk_report.py
build.ps1            сборка APK одной командой
docs/screenshots/    скриншоты для README
```

## Ограничения

- Парсер зависит от разметки сайта: если её поменяют, приложение покажет «часть пар
  не распознана» и продолжит работать с тем, что разобрало.
- Сборка только на Windows: скрипты — PowerShell.

## Лицензия

Код — [MIT](LICENSE). Шрифт Tiny5 — SIL Open Font License 1.1, текст в `app/assets/fonts/OFL.txt`.
