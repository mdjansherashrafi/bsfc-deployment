# Stage 1: Build-13
FROM nginx:1.27-alpine
COPY web/ /usr/share/nginx/html
HEALTHCHECK CMD wget -qO- http://127.0.0.1:80/ || exit 1
