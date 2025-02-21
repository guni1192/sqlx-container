# syntax=docker/dockerfile:1
FROM rust:1.85-slim-bullseye AS build
ARG DB=postgres
ARG SQLX_VERSION=0.7.4
WORKDIR /app

RUN --mount=type=cache,target=/usr/local/cargo/registry/ \
    cargo install sqlx-cli@$SQLX_VERSION --no-default-features --features rustls,$DB
