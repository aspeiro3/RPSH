# Game 'Rock-Paper-Scissors-Hammer'

Welcome to the public API for the 'Rock-Paper-Scissors' game, now featuring the exciting addition of 'Hammer'!

To engage in the game, simply make a GET request and include the user's choice (rock, paper, scissors, or hammer) as a query parameter.

`GET '<url>/api/v1/game?user_choice=paper'` - local URL 'http://localhost:3000'

The service will respond with success or error:

* Success:

`user_choice` - The value provided in the request parameter.

`api_choice` - The server's random selection.

`result` - The outcome of the game (user_won, user_lost, or game_draw).

Example response:
```json
{
  'user_choice': 'paper',
  'api_choice': 'rock',
  'result': 'user_won'
}
```

* Error:

In case of an error, the response will include error details.

Example response:
```json
{
  'errors': {
    'base': 'Some Error'
  }
}
```

## Description of the rules of the game:

* Rock wins against scissors but loses to paper and hammer.
* Paper wins against rock and hammer but loses to scissors.
* Scissors win against paper and hammer but lose to rock.
* Hammer wins against rock but loses to paper and scissors.
* A draw occurs if both the user's choice and the API's choice are the same.

## Stack & Features

* Ruby 3.2.2
* Rails 7.0.8
* API mode
* Postgres
* Puma
* RSpec testing framework
* Redis
* Sidekiq
* Swagger

## Getting Started

Clone project
```bash
git clone git@github.com:aspeiro3/RPSH.git
```

Build a project
```bash
docker-compose up --build
```

Add data from `credentials.example.yml` to the `credentials.yml.enc` file.
```bash
docker-compose run --rm backend rails credentials:edit
```

Creating API Documentation
```bash
docker-compose exec -e SWAGGER_DRY_RUN=0 -e RAILS_ENV=test backend rails rswag
```

## Links

| Name              | Link                                      |
|-------------------|-------------------------------------------|
| API (rails)       | http://localhost:3000                     |
| API Documentation | http://localhost:3000/api-docs/index.html |

## Commands

`script/backend` - start development environment and attach to backend

`yarn docker:status` - show status of running containers

`yarn build` - build project

`yarn up` - start development environment (you can use `-d` option for silence mode)

`yarn stop` - stop containers

`yarn down` - down containers

`yarn docker:exec <command>` - execute command inside container

`yarn bash` - go inside the container to execute commands

`yarn c` - run Ruby console inside the container

`yarn routes` - show all routes (you can find all matches `yarn routes | grep <resource_name>`)

`yarn g:migration <migration_name>` - generate migration

`yarn db:migrate` - run migrations

`yarn db:rollback` - run migration rollback

`yarn db:seed` - run seeds

`yarn db:reset` - run reset the database (drop, create, migrate, seed)

`yarn annotate` - run Annotate models and serializers

`yarn docs` - run Swagger docs generating

`yarn rspec` - run Rspec

`yarn rubocop` - run Rubocop (you can use `-a` option to fix some issues)

`yarn audit` - run bundle-audit

`yarn brakeman` - run Brakeman

`yarn linters` - run all tests (rubocop, audit, brakeman)

## Credentials

```
docker-compose run --rm backend rails credentials:edit
```
