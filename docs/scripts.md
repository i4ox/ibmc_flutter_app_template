# Сценарии проекта

Чтобы запустить сценарии проекта, вы будем использовать `Makefile`.
Вы должны находиться в корне проекта, чтобы запускать сценарии.

Команда для запуска сценария:

```bash
make <task_name> # for example, fvm_vscode or spider_build
```

## codegen

- Запускает pub get.
- Производит сборку через build_runner.
- Форматирует проект.

## clear_ios

Clear local dependencies for iOS.

## create_feature

Создает новую feature с помощью mason.

## create_screen

Создает новый экран с помощью mason.

## format

Форматирует код.

## fvm_vscode

Настраивает FVM для VSCode IDE.

## init

Этот скрипт надо запускать перед самым первым запуском. Он делает:

- flutter clean
- clean_ios
- flutter pub get
- flutter pub run build_runner
- Форматирует код

## intl

Генерирует локализацию с форматированием кода.

## precompile_svg

> [!IMPORTANT]
> Возможно будет удалено в дальнейшом

Компилирует SVG в vec файлы для оптимизации иконок.

## spider_build

Производит генерацию ассетов через Spider.

## version

Устанавливает необходимую версию Flutter.