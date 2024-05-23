# Шаблон для проектов Flutter от ИБМХ

## ✨ Обзор

Привет всем! Данный репозиторий - это стандартный шаблон для наших Flutter проектов в ИБМХ и вы можете использовать его
как твердую основу для своих проектов.

Здесь вы найдете:

- 📚 **Документацию**: Поймите структуру нашего проекта с помощью прилагаемой базовой документации.
- 🔄 **Интеграция FVM(Flutter Version Manager)**: Наслаждайтесь удобным способом управления версиями Flutter с помощью уже интегрированного FVM.
- 🔨 **Предварительно настроенные окружения для сборки**: Мы уже создали типы сборок - Production и Development, чтобы сделать процесс разработки более удобным.
- 💎 **Заранее настроенные иконки приложения и Splash экран**: Мы уже предварительно настроили значки приложения и Splash экран.
- 🌍 **Настроенная локализация**: Охватите глобальную аудиторию с помощью готовой к использованию настройки локализации.
- 📜 **Вспомогательные скрипты**: Используйте заранее написанные сценарии оболочки для упрашения работы с исходным кодом приложения.
- 🧰 **Вспомогательные утилиты**: В данном шаблоне изначально настроены инструменты, целью которых является облегчить разработку. Например, [mason](https://github.com/felangel/mason).

## 🚀 Быстрый старт

> [!IMPORTANT]
> Эту секцию надо удалить после инициализации проекта

### Использование шаблона

Следуйте следующим инструкциям для инициализации проекта:

1. Пропишите имя своего приложения [здесь](#введите-имя-приложения-здесь).
2. Произведите поиск `ibmc_flutter_app_template` и замените на то имя проекта, которое вам нужно.
3. Настройте Supabase согласно этому [руководству](./docs/supabase.md) или Firebase согласно этому [руководству](./docs/firebase.md).
4. Настройте Sentry (вы можете найти это по `TODO: (init-project)`).
5. Установите необходимую версию Flutter через FVM, используя команду ниже:
> ```bash
> fvm use <flutter_version>
> ```
6. Пропишите какую версию Flutter вы используйте для этого проекта [здесь](#версии-flutter-и-dart-для-этого-проекта).
7. Установите тэги для issues и pull requests в настройках вашего репозитория. Наша настройка описана [здесь](./docs/github_repository.md).

## Введите имя приложения здесь

> [!IMPORTANT]
> Введите имя приложения выше и удалите это предупреждение

## Базовая информация

> [!NOTE]
> Добавьте сюда базовую информацию о проекте, например
> - пару слов о том, что это за проект
> - перечислите, что за технологии вы используете(BLoC, Riverpod, что-то специфичное и так далее)
> - добавьте ссылку на TAIGA докуменацию проекта

### Настройки

Для строк в проекте: 120 символов

### Зависимости

Используйте команды ниже, чтобы обновить версии зависимостей:

```bash
fvm flutter pub get --enforce-lockfile
```

## Flutter Version Management(FVM)

### Версии Flutter и Dart для этого проекта

> [!IMPORTANT]
> Поменяйте версии Flutter и Dart ниже и удалите это предупреждение

Flutter: ***3.19.6*** / Dart SDK: ***3.3.4***

### FVM

Данный проект использует FVM для управления версиями Flutter. Установка и настройка IDE для работы с FVM описана [тут](https://fvm.app/documentation/getting-started/configuration) и [тут](https://fvm.app/documentation/guides/vscode).

Для установки Flutter нужной для проекта версии, выполните команду ниже:

```bash
fvm install
```

Для VSCode IDE вы можете использовать следующий скрипт [fvm_vscode.sh](./scripts/fvm_vscode.sh):

```bash
sh scripts/fvm_vscode.sh
```

Вы должны использовать `fvm flutter ...` везде вместо `flutter ...`, когда работаете с проектом.

## Генерация кода

Основная команда для генерации кода:

```bash
fvm flutter pub run build_runner build --delete-conflicting-outputs
```

### Генерация ассетов

Вы можете легко добавлять ассеты в ваше приложение следуя следующим шагам:

1. Добавьте ассет в директорию `assets`(убедитесь, что она подключена в `pubspec.yaml`).
2. Запустьте сценарий [spider_build.sh](./scripts/spider_build.sh).
  
>```bash
> sh scripts/spider_build.sh
>```

Конфигурация для Spider находится [здесь](./spider.yaml).

> [!NOTE]
> Добавьте необходимую информацию, например:
> - Генерация API моделей и сервисов.
> - Генерация чего-либо еще необходимого для работы или запуска проекта.

### Mason

Данный проект использует Mason, чтобы генерировать код, основанный на шаблонах.
Выполните следующие команды, чтобы установить mason:

```bash
# Рекомендованный способ
brew tap felangel/mason
brew install mason

# Или
fvm dart pub global activate mason_cli
```

Данный проект использует два шаблона - [feature](./gen/bricks/feature/) и [screen](./gen/bricks/screen/).
Чтобы использовать шаблоны, их надо прописать в [mason.yaml](./gen/bricks/screen/).

Сначала надо загрузить эти шаблоны из mason.yaml:

```bash
mason get
```

После мы можем использовать эти команды для генерации кода:

```bash
mason make TEMPLATE_NAME # insert the template 'feature' or 'screen' instead of TEMPLATE_NAME
```

## Необходимые условия для запуска приложения

> [!NOTE]
> Добавьте сюда необходимую информацию, например:
> - настройки VPN для разработки.
> - аккаунты для тестирования/разработки, например, от Sentry.

## Сценарии проекта

Все сценарии хранятся в директории [scripts](./scripts/) и описаны [здесь](./docs/scripts.md).

## Сборка

### Версионирование

> [!NOTE]
> Опишите здесь как происходит версионирование в вашем проекте.

Например, можно использовать следующие правила:

Задавайте номер версии как MAJOR.MINOR.PATCH, инкремент происходит по следующим правилам:

- MAJOR версия, основывается на том сколько лет существует проект. Например, 2024 -> 1, 2025 -> 2, 2026 -> 3.
- MINOR версия, основывается на том какой месяц прошел с момента создания проекта(1,2,3,..,12).
- PATCH версия, основывается на две месяца с момента итерации MINOR версии.
- После через + идет BUILD_CACHE(шаблон <MAJOR><MINOR><PATCH><NUMBER_OF_RELEASE_PER_DAY>).

Примеры:

```bash
3.11.29+31129000 // first build for the date November 29, 2023
3.11.29+31129001 // second build for the date November 29, 2023
4.01.03+30103001 // second build for the date January 3, 2024
```

## Виды сборки приложения

Приложение имеет два вида сборки: `dev` и `prod`. Первый используется по-умолчанию.
Вы можете добавить свой вид сборки, использую [это](./docs/build_type.md).