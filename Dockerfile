# Dockerfile
FROM node:latest
WORKDIR /app
COPY . /app/

# 设置时区
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
# 安装
RUN npm install

# 启动
CMD echo $SERVER_NAME && echo $AUTHOR_NAME && npm run dev && npx pm2 log

# 环境变量
ENV SERVER_NAME="koa2-test-server"
ENV AUTHOR_NAME="wuyu"