# 🚀 Week 1 – Starting My DevOps Journey

This week marks the beginning of my **DevOps learning journey**. I started a new practical project using the **MERN Chat Application** created by **Codesistency** and began implementing DevOps tools and practices step by step.

---

## 📅 Tuesday – Docker & Docker Compose

On Tuesday, I started working with **Docker and Docker Compose** and containerized the Chat Web Application.

### 🐳 Docker

I learned how Docker is used to **containerize applications** by packaging the application and its dependencies into isolated containers.

I worked with:

- Docker Images
- Docker Containers
- Dockerfiles
- Port Mapping
- Environment Variables
- Container Logs
- Container Lifecycle

### 🧩 Docker Compose

I used **Docker Compose** to define and manage the application's services using a `docker-compose.yml` file.

Docker Compose helped me manage:

- Multiple containers
- Service configuration
- Container networking
- Volumes
- Environment variables
- Application startup and shutdown

Common commands I learned:

```bash
docker compose up --build -d
docker compose ps
docker compose logs -f
docker compose down
```

### 🌐 Docker Networking

I learned how Docker containers communicate with each other through Docker networks.

I learned about the commonly used Docker network types:

- **Bridge** – Default network for containers.
- **Host** – Container shares the host's network.
- **None** – Disables networking.
- **Overlay** – Used for communication across Docker hosts, mainly with Docker Swarm.
- **Macvlan** – Allows containers to appear as physical devices on the network.

I also learned that Docker Compose automatically creates a **default network**, allowing services to communicate using their service names.

Useful commands:

```bash
docker network ls
docker network inspect <network-name>
docker network create <network-name>
docker network connect <network-name> <container-name>
docker network disconnect <network-name> <container-name>
```

### 💾 Docker Volumes

I learned how Docker handles **persistent data** and why volumes are important when container data needs to survive container recreation.

I worked with three types of storage:

#### 🔹 Bind Mount

Maps a specific file or directory from the host machine to a location inside the container.

```yaml
volumes:
  - ./data:/app/data
```

#### 🔹 Named Volume

A Docker-managed volume with a specific name.

```yaml
volumes:
  app-data:
```

Named volumes are useful for persistent application data.

#### 🔹 Anonymous Volume

A volume without a user-defined name.

```yaml
volumes:
  - /app/node_modules
```

Docker automatically creates and manages the volume.

### 📦 Docker Volume Commands

I also learned commonly used volume commands:

```bash
docker volume ls
docker volume create my-volume
docker volume inspect my-volume
docker volume rm my-volume
docker volume prune
docker run -d --name my-container -v app-data:/app/data nginx
```

### 🧠 Key Learning

By the end of Tuesday, I understood how **Docker Images, Containers, Networks, Volumes, and Docker Compose work together** to run a multi-container application.

---

