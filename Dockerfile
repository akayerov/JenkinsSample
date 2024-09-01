FROM openjdk:17-alpine

# Копируем ваш код в контейнер
COPY . /app

# Устанавливаем ваш код как точку входа
WORKDIR /app

# Запускаем ваш код при запуске контейнера
CMD ["java", "-jar", "pipeLineTest-0.0.1-SNAPSHOT.jar"]
