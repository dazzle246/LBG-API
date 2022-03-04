FROM node:latest
WORKDIR /app
ENV PORT=5000
COPY . .
RUN npm install
EXPOSE 5000
ENTRYPOINT ["npm","start"]
