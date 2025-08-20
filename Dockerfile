FROM node:lts-buster
RUN git clone https://github.com/JawadYT36/KHAN-MD/root/ikJawad
WORKDIR /root/ikJawad
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "FLEX-AI~wQA3haja#S3P4YHkpfpNN3kcu8g1C4YLHuNYDLbsMPBy9DabapXc"]

