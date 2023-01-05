set positional-arguments := true

tag := "5-apache"

_default:
  @just --choose

@build:
  docker build --tag "php-apache-rewrite:{{ tag }}" .

