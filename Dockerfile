FROM nginx:stable-alpine-slim
COPY ./html /usr/share/nginx/html

RUN chown -R nginx:nginx /usr/share/nginx/html/ && chmod -R 755 /usr/share/nginx/html/ && \
      chown -R nginx:nginx /var/cache/nginx && \
      chown -R nginx:nginx /var/log/nginx && \
      chown -R nginx:nginx /etc/nginx/conf.d
RUN touch /var/run/nginx.pid && \
      chown -R nginx:nginx /var/run/nginx.pid

RUN sed -i '/http {/a\    server_tokens off;' /etc/nginx/nginx.conf

USER nginx
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
