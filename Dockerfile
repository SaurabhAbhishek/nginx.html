FROM nginx:latest
COPY nginx.html/index.html /usr/share/nginx/html/
EXPOSE 8087
