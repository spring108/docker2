## DevOps \ Домашнее задание №7

С помощью контейнерного оркестратора <b>docker-compose</b> поднять 2 сервиса: сборочный и продовый.
В сборочном сервисе должна происходить сборка Java приложения. 
В продовом сервисе - запуск приложения. 
Продовый образ должен быть минимальным по размеру.


## Команды на VM:
  - #### Подготовка инфраструктуры:
    - sudo apt update
    - sudo apt-get update
    - sudo apt-get install mc -y
    - sudo mc
    - apt install docker.io -y
    - cd /tmp
    - wget https://github.com/docker/compose/releases/download/v2.23.3/docker-compose-linux-x86_64
    - mv docker-compose-linux-x86_64 /bin/docker-compose
    - chmod +x /bin/docker-compose
    - docker-compose --version
  - #### Запуск сервисов:
    - mkdir /tmp/folder_common
    - cd /tmp
    - git clone https://github.com/spring108/docker2.git
    - cd /tmp/docker2
    - docker-compose build --no-cache
    - docker-compose up -d
    - docker-compose logs
    - go to http://178.154.202.77:8080/hello-1.0/


