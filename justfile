set positional-arguments := true

tag := "8-apache"

_default:
  @just --choose

@build:
  docker build --pull --tag "chardek/php-apache-rewrite:latest" .
  docker tag "chardek/php-apache-rewrite:latest" "chardek/php-apache-rewrite:{{ tag }}"

@login:
  docker login

@push:
  docker push --all-tags "chardek/php-apache-rewrite"
