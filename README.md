# Doctoral Registration Management Backend

This is the backend for the Doctoral Registration Management System, designed for the University Abdelmalek Essaâdi.

## Pre-requisites
- Docker
- Docker Compose
## Project structure

- Dockerfile: The file used to build the Docker image for the backend.
- docker-compose.yml: The file used to run the backend and the database and connect them together with the frontend.
- ./frontend/Dockerfile: The file used to build the Docker image for the frontend.


## Services

- **db**: PostgreSQL database
- **springapp**: Spring Boot application
- **pgadmin**: pgAdmin for database management
- **frontend**: Angular frontend application

## Getting Started

### Clone the Repository

```sh
git clone https://github.com/MedEZZOUAK/Full-project.git
cd Full-project
```
## Build the Docker images
    
```sh
    docker-compose build
```

## Run the Docker containers
    
```sh
    docker-compose up
```
This command will build and start all the services defined in the docker-compose.yml file.

## Accessing the Services

- Spring Boot Application: http://localhost:8080
- Angular Frontend: http://localhost:4200
- pgAdmin: http://localhost:5050

## Stopping the Docker containers

To stop the running containers, use the following command:

```sh
docker-compose down
```
## Database Configuration
The PostgreSQL database is configured with the following default settings:
- Database Name: JEE
- Username: postgres
- Password: root
You can change these settings in the docker-compose.yml file if needed.

## pgAdmin Configuration
The pgAdmin service is configured with the following default settings:
- Email: admin@admin.com
- Password: admin

You can access pgAdmin at http://localhost:5050 and use these credentials to log in.
You can also change these settings in the docker-compose.yml file if needed.

## Frontend Configuration
The Angular frontend application is configured to connect to the Spring Boot backend at http://localhost:8080. You can change this setting in the environment.ts file in the frontend source code if needed.

## Backend Configuration
The Spring Boot application is configured to connect to the PostgreSQL database at http://db:5432. You can change this setting in the application.properties file in the backend source code if needed.
For more info check the README.md file in the backend Repo [here](
    https://github.com/MedEZZOUAK/springapi_init.git )

## Contributors
I would like to thank my team members for their contributions to this project:
- [Salma Benaouda](https://github.com/SalmaBenaouda)
- [Madani Ouail](https://github.com/wail00222)
- [Bamhaouch Fatima-zahra](https://github.com/Fatibam)

## Rapport
- [Rapport](GestionDoctorat.pdf)

## Link to the other Repositories

- [Frontend](https://github.com/SalmaBenaouda/frontDoc.git)
- [Backend](https://github.com/MedEZZOUAK/springapi_init.git)