# TES DevOps Project

## Project Overview

This project demonstrates a complete DevOps workflow using GitHub, Jenkins, Docker, and AWS EC2.
The goal of this project is to automate the build and deployment of a static website using a CI/CD pipeline.

## Technologies Used

* GitHub (Source Code Repository)
* Jenkins (CI/CD Pipeline)
* Docker (Containerization)
* AWS EC2 (Linux Server Hosting)
* Nginx (Web Server)

## Project Workflow

1. **Source Code Management**

   * The website source code is stored in GitHub repository.

2. **Jenkins Pipeline**

   * Jenkins pipeline is configured to pull code from GitHub automatically.

3. **Artifact Creation**

   * Jenkins creates an artifact (`tes-artifact.tar`) from the project files.

4. **Docker Image Build**

   * A custom Docker image is created using a Dockerfile.

5. **Multi-Stage Docker Build**

   * Multi-stage Docker build is used to create a lightweight container image.

6. **Container Deployment**

   * The Docker container is deployed on an AWS EC2 Linux instance.

## Project Structure

```
projects_tes_lakshmi
│
├── Jenkinsfile
├── Dockerfile
├── index.html
├── mainframes.html
├── awsdevops.html
├── sir.jpg
└── README.md
```

## Application Access

After deployment, the application can be accessed using:

```
http://EC2-PUBLIC-IP:3824
```

## Conclusion

This project demonstrates how DevOps tools can be integrated to automate application deployment using Jenkins pipelines, Docker containers, and AWS infrastructure.
