FROM blackamda/queenamdi:public

RUN git clone https://github.com/BlackKingdoms/BlackKingdom /root/QueenAmdi
WORKDIR /root/QueenAmdi/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
