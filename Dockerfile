FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY catalogo.html /usr/share/nginx/html/catalogo.html
COPY cotizacion.html /usr/share/nginx/html/cotizacion.html
RUN sed -i 's/listen       80;/listen       8080;/g' /etc/nginx/conf.d/default.conf
EXPOSE 8080
HEALTHCHECK --interval=5s --timeout=3s CMD wget -q http://localhost:8080 || exit 1
