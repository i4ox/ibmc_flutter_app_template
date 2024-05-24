# Подпись Android приложений

Чтобы собрать релизную версию приложения, ее нужно подписать.

Чтобы сделать это, нужно следовать следующим шагам:

- Создать хранилище ключей.
- Настроить необходимые задачи для Gradle.
- Загрузить хранилище ключей в CI/CD пайплайн.
- Настроить CI/CD для вашего проекта.

## Создание хранилища ключей

Подпись приложения должна храниться в `.jks` файлах. Имя файла должно соблюдать следующий шаблон: `project_name_release.jks`.
Чтобы создать такой файл вы можете следовать [официальной документации](https://developer.android.com/studio/publish/app-signing).

Также вы должны создать файл `keystore_release.properties` со следующим содержимым:

```properties
storePassword=*myStorePassword*
keyPassword=*mykeyPassword*
keyAlias=*myKeyAlias*
storeFile=../keystore/*project_name*_release.jks
```

> [!WARNING]
> **ВАЖНО**:
> - Не меняйте имя файла `keystore_release.properties`.
> - Эти файлы необходимо хранить в `android/keystore`.
> - ЗАПРЕЩЕНО ХРАНИТЬ ЭТИ ФАЙЛЫ В РЕПОЗИТОРИИ.

Чтобы позволить участником команды собираться релизную версию локально, вы должны предоставить им эти файлы.

## Настройка проекта для работы с хранилищем ключей

Следующий шаг, это создание файла `keystoreConfig.gradle` в директории `android/keystore`. Вы можете скопировать его в свой проект отсюда.

Также скопируйте `signinConfigs.gradle` в ваш проект. Убедитесь, что он содержит следующие строки:

```gradle
release {
            apply from: '../keystore/keystoreConfig.gradle'

            keyAlias keystoreConfig.keyAlias
            keyPassword keystoreConfig.keyPassword
            storeFile file(keystoreConfig.storeFile)
            storePassword keystoreConfig.storePassword
        }
```

### Настройка CI для проекта.

Чтобы вы могли собирать проекты через CI, вы должны добавить файлы `*.jks` и `.properties` в ваш CI инструмент.