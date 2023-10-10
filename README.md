# Game 'Rock-Paper-Scissors-Hammer'

This is a public API for the 'Rock-Paper-Scissors' game with the added feature of choosing 'Hammer'.
To play the game, make a GET request and pass the user's choice (rock, paper, scissors, or hammer) as a query parameter.

`GET '<url>/api/v1/game?user_choice=paper'` - local URL 'http://localhost:3000'

In response, the service will return three values:
* user_choice - the value passed in the request parameter
* api_choice - the server's random choice
* result - the result of the game (user_won, user_lost, or game_draw)

Example response:
```json
{
  'user_choice': 'paper',
  'api_choice': 'rock',
  'result': 'user_won'
}
```

## Stack & Features

* Ruby 3.2.2
* Rails 7.0.8
* API mode
* Postgres
* Puma
* Handling CORS
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

## Links

| Name              | Link                                      |
|-------------------|-------------------------------------------|
| API (rails)       | http://localhost:3000                     |
| API Documentation | http://localhost:3000/api-docs/index.html |
| Show emails       | http://localhost:3000/letter_opener       |

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
