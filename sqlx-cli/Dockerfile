# syntax=docker/dockerfile:1
FROM rust:1.75-slim-bullseye AS build
ARG DB=postgres
ARG SQLX_VERSION=0.7.3
WORKDIR /app

RUN --mount=type=cache,target=/usr/local/cargo/registry/ \
    cargo install sqlx-cli@$SQLX_VERSION --no-default-features --features rustls,$DB
