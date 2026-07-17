FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY catalogo.html /usr/share/nginx/html/catalogo.html
COPY cotizacion.html /usr/share/nginx/html/cotizacion.html
RUN printf 'server {\n    listen 8080;\n    server_name _;\n    root /usr/share/nginx/html;\n    index index.html;\n    location ~ \\.html$ {\n        add_header Cache-Control "no-cache";\n    }\n}\n' > /etc/nginx/conf.d/default.conf
EXPOSE 8080
