FROM eclipse-temurin:11-jre

WORKDIR /app

RUN wget $(curl -s https://api.github.com/repos/jagrosh/MusicBot/releases/latest | grep 'browser_' | cut -d\" -f4) -O JMusicBot.jar

CMD ["java", "-Dnogui=true", "-jar", "JMusicBot.jar"]
