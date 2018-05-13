NAME=flaskapp

run:
	docker-compose build
	docker-compose up -d

stop:
	docker stop ${NAME}_uwsgi_1 ${NAME}_nginx_1
	docker rm ${NAME}_uwsgi_1 ${NAME}_nginx_1

restart:
	docker stop ${NAME}_uwsgi_1 ${NAME}_nginx_1
	docker rm ${NAME}_uwsgi_1 ${NAME}_nginx_1
	docker-compose build
	docker-compose up -d

nginx_log:
	docker logs ${NAME}_nginx_1

uwsgi_log:
	docker logs ${NAME}_uwsgi_1

