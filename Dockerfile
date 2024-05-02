FROM eclipse-temurin:11-jre

WORKDIR /app

# Temporary forced rolback to 3.9 because 4.0 is broken since 2 months ago
#RUN wget $(curl -s https://api.github.com/repos/jagrosh/MusicBot/releases/latest | grep 'browser_' | cut -d\" -f4) -O JMusicBot.jar
RUN wget https://github.com/jagrosh/MusicBot/releases/download/0.3.9/JMusicBot-0.3.9.jar -O JMusicBot.jar

CMD ["java", "-Dnogui=true", "-jar", "JMusicBot.jar"]
