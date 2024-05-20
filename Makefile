SQLX_VERSION=0.7.3

all: sqlx-cli-mysql sqlx-cli-postgres

sqlx-cli-mysql:
	docker build \
		--platform linux/amd64 \
		--build-arg SQLX_VERSION=$(SQLX_VERSION) \
		--build-arg DB=mysql \
		-t ghcr.io/guni1192/containers/sqlx-cli:$(SQLX_VERSION)-mysql \
		./sqlx-cli

sqlx-cli-postgres:
	docker build \
		--platform linux/amd64 \
		--build-arg SQLX_VERSION=$(SQLX_VERSION) \
		--build-arg DB=postgres \
		-t ghcr.io/guni1192/containers/sqlx-cli:$(SQLX_VERSION)-postgres \
		./sqlx-cli
