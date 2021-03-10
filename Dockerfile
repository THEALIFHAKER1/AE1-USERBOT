FROM movecrew/one4ubot:alpine-latest

RUN mkdir /AE1USERBOT && chmod 777 /AE1USERBOT
ENV PATH="/AE1/bin:$PATH"
WORKDIR /AE1USERBOT

RUN git clone https://github.com/THEALIFHAKER1/AE1-USERBOT -b master /AE1USERBOT

#
# Make open port TCP
#
EXPOSE 80 443

#
# Finalization
#
CMD ["python3","-m","userbot"]
