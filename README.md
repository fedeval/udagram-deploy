# Hosting a Full-Stack Application - Udacity Fullstack JS Nanodegree

## Introduction ##

This is the final project of the Udacity Fullstack JS Nanodegree. The goal is to learn how to deploy a fullstack web app using AWS services, create an automated CI/CD pipeline and write documentation.

This repo includes:
* An API build with Node.js and Express (starter code)
* A Front-End application build with Angular (starter code)
* A documentation folder including information about:
  * Architecture
  * Dependencies
  * CI/CD Pipeline
* Screenshots of live AWS instances of RDS, Elastic Beanstalk and S3
* A `.circleci`folder with the configuration to run an automated CI/CD pipeline in CircleCI 

---
## Getting Started

1. Clone this repo locally into the location of your choice.
2. Open a terminal and navigate to the root of the repo
3. Move into the `udagram-api` folder and install all dependencies using `npm install`
4. Move into the `udagram-frontend` folder and install all dependencies using `npm install`

---
## Environment Variables

The API relies on several environment variables to function. `dotenv` is already included in the `package.json`file, so it is only necessary to create a `.env` file with the following variables:

| Name                  | Value                                                 |
| ----------------------|:-----------------------------------------------------:|
| POSTGRES_HOST         | The url of the RDS database instance                  |
| POSTGRES_DB           | postgres                                              |
| POSTGRES_USERNAME     | The username specified when creating the RDS instance |
| POSTGRES_PASSWORD     | The password specified when creating the RDS instance |
| DB_PORT               | The port of the RDS db instance (5432 for postgres)   |
| URL                   | The url of the S3 hosted app.                         |
| JWT_SECRET            | A string used to generate JWT tokens                  |
| AWS_REGION            | The AWS region you used to provision RDS, S3 and EB   |
| AWS_PROFILE           | Your AWS profile                                      |
| AWS_BUCKET            | The name of the S3 bucket used to host the front end  | 
| AWS_ACCES_KEY_ID      | Your AWS acces key ID                                 | 
| AWS_SECRET_ACCESS_KEY | Your AWS secret access key                            | 

**IMPORTANT: .env should be added to .gitignore and never committed to a public repo.**

---
## AWS Setup

Provision the necessary AWS services needed for running the application:

1. In AWS, provision a publicly available RDS database running Postgres.
2. In AWS, provision an S3 bucket for hosting the uploaded files.
3. In AWS, deploy the API on Elastic Beanstalk and add the API link to the `environment.prod.ts` file in the `udagram-frontend > src > environments`

--
## Built With

- [Angular](https://angular.io/) - Single Page Application Framework
- [Node](https://nodejs.org) - Javascript Runtime
- [Express](https://expressjs.com/) - Javascript API Framework

## License

[License](LICENSE.txt)
