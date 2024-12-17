# Etapa 1: Build
FROM openjdk:17-jdk-slim AS build

# Copiar o projeto para o container
COPY src /app/src
COPY pom.xml /app

# Definir o diretório de trabalho
WORKDIR /app

COPY mvnw /app/mvnw
COPY .mvn /app/.mvn
RUN chmod +x /app/mvnw

# Rodar o build com Maven
RUN ./mvnw clean install -DskipTests

# Etapa 2: Runtime
FROM openjdk:17-jdk-slim

# Copiar o JAR gerado do estágio de build
COPY --from=build /app/target/catalogo-ebserh-0.0.1-SNAPSHOT.jar /app/app.jar

# Configurar o diretório de trabalho e porta do container
WORKDIR /app
EXPOSE 8080

# Comando para executar o JAR
CMD ["java", "-jar", "app.jar"]