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

### 🔀 Git & GitHub

Along with Docker, I also learned how to manage my DevOps project using **Git and GitHub**.

While adding the Chat Web Application to my main `devops_journey` repository, I learned about **nested Git repositories** and how Git can track a repository inside another repository.

I also learned how to convert a nested Git repository into a normal directory tracked by the parent repository.

#### 📌 Commands I Learned

**Check the current repository status:**

```bash
git status
```

Shows the current branch, staged changes, unstaged changes, and untracked files.

**Check the current branch:**

```bash
git branch
```

Displays the local branches and shows the currently active branch.

**Rename the current branch:**

```bash
git branch -M master
```

Renames the current branch to `master`.

**Remove a nested repository from the parent repository's Git index:**

```bash
git rm --cached week1/mern-chat-app
```

The `--cached` option removes `week1/mern-chat-app` from Git's index **without deleting the actual files from the working directory**.

This was useful because `mern-chat-app` was previously being treated as a separate Git repository inside my main `devops_journey` repository.

**Remove the nested repository's Git metadata:**

```bash
rm -rf week1/mern-chat-app/.git
```

This removes the `.git` directory inside `mern-chat-app`, converting it from an independent Git repository into a normal project directory.

> ⚠️ This command should only be used when you intentionally want to remove the nested repository's Git history/configuration.

**Add the project files to the staging area:**

```bash
git add .
```

Stages the changes so they can be included in the next commit.

**Create a commit:**

```bash
git commit -m "Add Chat App Docker setup"
```

Creates a snapshot of the staged changes with a descriptive commit message.

**Check which files are tracked by Git:**

```bash
git ls-files week1/mern-chat-app
```

Displays the files from `mern-chat-app` that are currently tracked by the parent Git repository.

**Push changes to GitHub:**

```bash
git push -u origin master
```

Uploads the local `master` branch to the `origin` remote repository on GitHub.

Here:

- `git push` → Upload local commits to a remote repository.
- `-u` → Sets the upstream branch for future pushes and pulls.
- `origin` → Name of the GitHub remote repository.
- `master` → Branch being pushed.

### 🧠 Git Learning

Through this process, I learned how Git tracks files, branches, commits, remotes, and nested repositories. I also learned how to troubleshoot issues such as:

- `src refspec master does not match any`
- Nested Git repositories
- Git repository ownership/safety
- Staging and committing changes
- Pushing a local repository to GitHub
- Managing the relationship between a local Git repository and a GitHub repository

### 🧠 Key Learning

By the end of Tuesday, I understood how **Docker Images, Containers, Networks, Volumes, and Docker Compose work together** to run a multi-container application.

---

