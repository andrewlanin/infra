FROM alpine:3.19

WORKDIR /service

RUN apk add wget openjdk17
RUN wget https://github.com/jagrosh/MusicBot/releases/download/0.4.0/JMusicBot-0.4.0.jar -O musicbot.jar

ADD config.txt.template .
ADD --chmod=500 run.sh .

CMD ["./run.sh"]
