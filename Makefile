PATH_COMPOSE	=	./srcs/compose.yaml

PATH_VOL		=	/home/lray/data
PATH_DB			=	$(PATH_VOL)/mariadb
PATH_WP			=	$(PATH_VOL)/wordpress
PATH_AM			=	$(PATH_VOL)/adminer
PATH_OS			=	$(PATH_VOL)/openssl
PATH_ST			=	$(PATH_VOL)/static


all : up

up : makedir
	@docker compose -f $(PATH_COMPOSE) up --build -d

down :
	@docker compose -f $(PATH_COMPOSE) down

start:
	@docker compose -f $(PATH_COMPOSE) start

stop :
	@docker compose -f $(PATH_COMPOSE) stop

clean : down
	@docker system prune -af
	@docker volume rm wordpress-data mariadb-data adminer-data openssl-data static-data

re : clean all

makedir :
	@mkdir -p $(PATH_VOL)
	@mkdir -p $(PATH_DB)
	@mkdir -p $(PATH_WP)
	@mkdir -p $(PATH_AM)
	@mkdir -p $(PATH_OS)
	@mkdir -p $(PATH_ST)
