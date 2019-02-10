FROM nginx:1.12-alpine
WORKDIR /usr/app
COPY ./three.js .
COPY ./index.html .
COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
