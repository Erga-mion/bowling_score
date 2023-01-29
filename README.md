# README

ルール( <https://ja.wikipedia.org/wiki/%E3%83%9C%E3%82%A6%E3%83%AA%E3%83%B3%E3%82%B0#%E5%9F%BA%E6%9C%AC%E7%9A%84%E3%81%AA%E3%83%AB%E3%83%BC%E3%83%AB> ) の「通常の進行方法及び得点計算方法」に基づいてボウリングスコアを計算します。

## Requirement

* Docker

## Setup
```shell
docker compose build
```

## Run
```shell
docker compose run --rm app ruby lib/main.rb
```

## Test
```shell
docker compose run --rm app bundle exec rspec
```

## Format code
```shell
docker compose run --rm app bundle exec rubocop -a
```
