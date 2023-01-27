# README
ボウリングスコアを計算します

## Requirement

* Docker

## Setup
```shell
docker compose build
```

## Run
```shell
docker compose run --rm app ruby lib/bowling_score.rb
```

## Test
```shell
docker compose run --rm app bundle exec rspec
```

## Format code
```shell
docker compose run --rm app bundle exec rubocop -a
```
