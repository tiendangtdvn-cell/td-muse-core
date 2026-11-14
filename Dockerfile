FROM node:18-alpine
RUN npm install -g pnpm
WORKDIR /app
RUN wget https://github.com/aiokvn/muse2api/archive/refs/heads/main.zip && \
    unzip main.zip && mv muse2api-main/* . && rm -rf muse2api-main main.zip
RUN pnpm install
EXPOSE 8080
CMD ["pnpm", "start"]
