# Microservices Template

A boilerplate to help start microservices projects in Node.js quickly. Packaged with Docker, Swagger (edit API spec, execute test, mocking, Nodemon etc.), Swagger UI (API documentation), Winston (logging), Dotenv (.env config)

## Code Structure

1. All logic is written in controllers to be placed within `api/controllers` folder.
2. All helpers / utility functions to be placed in `api/helpers` folder.
3. All test cases to be placed in `test` folder.
4. All configuration is stored against the `.env` file in the root folder.
5. (Work in Progress) Environment-specific config to be placed in respective `config/env` environment folder.


## Getting started

### Normal Installation

1. Install node.js and git
2. Add them to path if not already in path.
4. Clone the repo and cd to it
6. Run `npm install` to get all the dependencies
7. Run `npm start` to start as usual
8. Run `swagger project start -m` to start in mock mode

### Running with Docker

1. Install [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/)
2. Clone the repo and cd to it
2. Run `docker-compose up` to get the containers installed and started.

### Pulling & Running from Docker Hub

1. Pull from DockerHub `docker pull tonytrinh0111/innablr-tech-challenge`

2. Then, start `docker run -d -p 3000:3000 -e NODEJS_PORT=3000 -e NODE_ENV=development -e NODEJS_IP=0.0.0.0 tonytrinh0111/innablr-tech-challenge`


## API Spec (OpenAPI/Swagger)

Service / API documentation is epxosed as `/api-docs`. This is a reflect of `api/swagger/swagger.yaml` content

Run swagger editor by `swagger project edit` at root

## Logging

An example in `app.js`
`logger.log('info','try:\ncurl http://127.0.0.1:' + port...);`

More info at [Winston](https://github.com/winstonjs/winston)

## Running Tests

Run `npm test` or `swagger project test` at root to execute the written test case


## To-Do
1. Add `PromClient` and a new controller to epxose metrics
2. Add `Eslint` for, well, linting
3. Probably need to re-structure a bit (i.e. `/src/` for all source code or a dedicated folder for static content?)
4. Or, just use Loopback framwork instead?
5. Nah mate! If you are really reading this line, you need to buy me a beer!
