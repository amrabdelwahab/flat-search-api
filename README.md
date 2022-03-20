# Flat Search
An Api to enable building a diary for helping you organise your flat search.

## Setup local environment

1. Clone the project.
2. `cd` into the directory.
3. Create the file `config/master.key` with the value of Rails master key (Ask for it).
4. Run `make setup`

## Running the server locally

1. Run `make run` in your host machine shell.
2. Send requests to `localhost:3000`.

## Accessing the Docker container shell

1. Run `make dev` in you host machine shell.


## Running tests

Either:

* Run `make test` from your host machine shell, or
* Run `rspec` from your Docker container shell.

## Autocorrecting lint offences

* Run `rubocop -a` from your Docker container shell.

## Installing a new dependency

1. Change your `Gemfile` file to add new dependencies.
2. Either:
  * Run `make bundle` from your host machine shell, or
  * Run `bundle` from your Docker container shell.

## To add a new secret credential to production environment

* Get into the container shell using `make dev`
* Run `EDITOR=vi rails credentials:edit`
* Add the key and access it through `Rails.application.credentials.CREDENTIAL_NAME`

## Questions

If you have a question, please contact:
* @amrabdelwahab