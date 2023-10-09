# API name

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

```bash
git clone git@github.com:aspeiro3/RPSH.git
```

```bash
docker-compose up --build
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

`yarn rspec:quick` - run parallel Rspec

`yarn rubocop` - run Rubocop (you can use `-a` option to fix some issues)

`yarn audit` - run bundle-audit

`yarn brakeman` - run Brakeman

`yarn linters` - run all tests (parallel rspec, rubocop, audit, brakeman)

## Credentials

```
docker-compose run --rm backend rails credentials:edit
```
