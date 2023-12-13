# syntax=docker/dockerfile:1

ARG RUST_VERSION=1.73
ARG APP_NAME=sqlx
FROM rust:${RUST_VERSION}-slim-bullseye AS build
ARG APP_NAME
ARG DB_NAME=postgres
ARG SQLX_VERSION=0.7.3
WORKDIR /app

RUN --mount=type=cache,target=/usr/local/cargo/registry/ \
    cargo install sqlx-cli@$SQLX_VERSION --no-default-features --features rustls,$DB_NAME
