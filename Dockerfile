# Используем официальный образ OpenJDK в качестве базового
FROM openjdk:17-alpine

# Откроем порт
EXPOSE 8080:8080

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем JAR-файл в контейнер
COPY build/libs/greeting-from-docker-0.0.1-SNAPSHOT.jar greeting-from-docker.jar

# Указываем команду для запуска приложения
ENTRYPOINT ["java", "-jar", "greeting-from-docker.jar"]
