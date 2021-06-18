# Introduction

This app relies on CircleCI to automate install, build and deploy processes. The CI/CD pipeline follows the instructions outlined in the `.circleci/config.yml` file.

---
## Orbs

Three orbs are required to run the `udagram` workflow and its two jobs:
* `circleci/node@4.1.0`
* `circleci/aws-cli@2.0.3`
* `circleci/aws-elastics-beanstalk@1.0.0`

---
## Scripts

The pipeline leverages 6 scripts defined in the `package.json` file in the root folder of the project to build, instal and deploy both the API and the Front End:
```json

"scripts": {
  "api:install": "cd udagram-api && npm install",
  "frontend:install": "cd udagram-frontend && npm install",
  "api:build": "cd udagram-api && npm run build",
  "frontend:build": "cd udagram-frontend && npm run build",
  "api:deploy": "cd udagram-api && npm run deploy",
  "frontend:deploy": "cd udagram-frontend && npm run deploy"
 }
 
```

---
## Jobs

### Build

1. Runs into a docker image
2. Installs node and npm
3. Installs yarn
4. Checkout from GitHub
5. Install all the `udagram-api` dependencies
6. Install all the `udagram-frontend` dependencies
7. Create a build artifact for the API
8. Create a build artifact for the Front End

### Deploy

1. Runs into a docker image
2. Installs node and npm
3. Checkout from GitHub
4. Installs and sets up the AWS CLI
5. Installs and sets up the Elastic Beanstalk CLI
6. Install all the `udagram-frontend` dependencies
7. Create a build artifact for the Front End
8. Deploys the build artifact into an AWS S3 bucket
9. Install all the `udagram-api` dependencies
10. Create a build artifact for the API
11. Zips the build artifact and deploys it an Elastic Beanstalk virtual environment

---
## Diagram

![Pipeline Diagram](https://github.com/fedeval/udagram-deploy/blob/master/screenshots/Udagram_Pipeline_Diagram.png?raw=true)
