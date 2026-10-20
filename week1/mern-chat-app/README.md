# 💬 Chat Web App – Next.js DevOps Project

## 📌 About the Project

**Chat Web App** is a full-stack real-time chat application built with **Next.js** and used as the foundation for my **DevOps and Cloud learning project**.

The original application was created by **Codesistency**, and this repository is based on that project. I have used the application as a foundation to learn and implement various DevOps and Cloud technologies, including **Docker, Kubernetes, Prometheus, and Grafana**.

The main goal of this project is to understand how a full-stack application can be **containerized, deployed, monitored, and managed using modern DevOps and Cloud practices**.

## 🙏 Appreciation & Credits

I would like to sincerely thank **Codesistency** for creating and sharing the original Chat Web App project.

**Original GitHub Repository:**  
https://github.com/burakorkmez/mern-chat-app

**YouTube Channel:**  
https://www.youtube.com/@codesistency

> **Credits:** The original application and its source code belong to the original creator, **Codesistency**. This repository uses the project as a foundation for educational and DevOps learning purposes. The DevOps configurations, containerization, Kubernetes deployment, monitoring, and related implementations in this repository were added by me for learning and practice.

## 🐳 Running the Project with Docker Compose

You can run the complete application locally using **Docker Compose**.

### 1. Create Environment Files

First, create the required environment files for the application.

The required environment variables are listed in the respective `env.example` files. Use these files as a reference to configure your environment.

For example, if the `.env.example` file is located in the project root:

```bash
cp .env.example .env
```

Update the `.env` file with your required configuration values.


### 2. Start the Application

Navigate to the Docker Compose directory:

```bash
cd docker-compose
```

Then run:

```bash
docker compose -f docker-compose.yml up --build -d
```

The `--build` option ensures that Docker rebuilds the application images before starting the containers.

The `-d` option runs the containers in **detached mode**, allowing them to continue running in the background.

### 3. Check Running Containers

You can verify that the containers are running with:

```bash
docker compose -f docker-compose.yml ps
```

To view the application logs:

```bash
docker compose -f docker-compose.yml logs -f
```

### 4. Access the Application

Once all services are successfully started, open your browser and visit:

```text
http://localhost:80
```

The Chat Web App should now be available locally.

### 5. Stop the Services

Since the application is running in detached mode, `Ctrl + C` is **not required** to stop the services.

To stop and remove the running containers:

```bash
docker compose -f docker-compose.yml down
```

If you want to rebuild the images after making changes, run:

```bash
docker compose -f docker-compose.yml up --build -d
```