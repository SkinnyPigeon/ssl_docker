FROM node:12
EXPOSE 80:80
WORKDIR /usr/src/app
COPY /code .
ENV CHALLENGE_TOKEN=n9fAKpGp0g3lNDVIqdZMhX8ey6UA0bzHKbGnPASu8TA.rjbPGY9ulOwzD4tfmyKT3GhK3krMCip8Mq7w1OqXdlw
ENV CHALLENGE_ADDRESS=n9fAKpGp0g3lNDVIqdZMhX8ey6UA0bzHKbGnPASu8TA
RUN npm i
CMD [ "npm", "start" ]