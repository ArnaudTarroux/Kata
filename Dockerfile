FROM php:7.3-fpm-alpine AS base

WORKDIR /app

FROM base AS builder

COPY --from=composer:1.6.3 /usr/bin/composer /usr/bin/composer
COPY . /app

