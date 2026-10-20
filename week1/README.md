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

## 🐧 Linux Process & Log Management

Along with Docker and Git, I also practiced some important **Linux commands used for process monitoring, troubleshooting, and log analysis**.

### 🔎 `ps` – Process Status

The `ps` command stands for **Process Status** and is used to display information about running processes.

```bash
ps
```

To view processes from all users in a detailed format:

```bash
ps aux
```

### 🔍 `ps auxf`

I also learned:

```bash
ps auxf
```

This command displays detailed information about running processes and shows the **parent-child relationship between processes** in a tree-like format.

The flags mean:

- `a` → Show processes associated with all users/terminals.
- `u` → Display processes in a user-oriented format with information such as CPU and memory usage.
- `x` → Include processes that do not have a controlling terminal, such as background services.
- `f` → Display processes in a **forest/tree format**, showing parent-child relationships.

Example:

```text
systemd
 ├── sshd
 │    └── bash
 │         └── node
 └── docker
      └── containerd
```

This is useful when troubleshooting which process started another process.

### 📌 Useful `ps` Commands

Check all running processes:

```bash
ps aux
```

Show processes in tree format:

```bash
ps auxf
```

Find a specific process:

```bash
ps aux | grep nginx
```

Display information about a specific PID:

```bash
ps -p 1234 -f
```

Sort processes by CPU usage:

```bash
ps aux --sort=-%cpu
```

Sort processes by memory usage:

```bash
ps aux --sort=-%mem
```

Show the process tree:

```bash
pstree
```

### 🧯 `fuser` – Find Which Process Is Using a Resource

I learned that `fuser` is useful for finding **which process is using a particular file, directory, filesystem, or network port**.

In simple terms:

> **`fuser` answers: "Which process is using this?"**

For example, to find which process is using port `3000`:

```bash
fuser 3000/tcp
```

For more detailed information:

```bash
fuser -v 3000/tcp
```

Example:

```text
                     USER       PID ACCESS COMMAND
3000/tcp:            vinit     1234 F....  node
```

Here, `1234` is the **PID** of the process using port `3000`.

I can then investigate the process with:

```bash
ps -p 1234 -f
```

A useful troubleshooting flow is:

```text
Port 3000
    ↓
fuser -v 3000/tcp
    ↓
Find PID
    ↓
ps -p <PID> -f
    ↓
Identify the process
```

I also learned that:

```bash
fuser -k 3000/tcp
```

can terminate processes using port `3000`, but this should be used carefully, especially on production systems.

### 📜 `tail` – View the End of a File

The `tail` command displays the **last lines of a file**.

For example:

```bash
tail app.log
```

By default, it displays the last **10 lines**.

To display the last 20 lines:

```bash
tail -n 20 app.log
```

### 👀 `tail -f` – Follow a Log File

The `-f` flag means **follow**.

```bash
tail -f app.log
```

It displays the end of the file and **continues watching it for new lines**.

For example, if a server is writing new logs:

```text
Server started
User connected
Request received
```

and a new request occurs, the new log entry appears automatically in the terminal.

This is extremely useful for **real-time log monitoring**.

For example:

```bash
tail -f /var/log/syslog
```

or:

```bash
docker compose logs -f
```

### 📌 Useful `tail` Commands

Show the last 10 lines:

```bash
tail app.log
```

Show the last 50 lines:

```bash
tail -n 50 app.log
```

Follow the log continuously:

```bash
tail -f app.log
```

Show the last 100 lines and continue following:

```bash
tail -n 100 -f app.log
```

Stop `tail -f`:

```text
Ctrl + C
```

### 🧠 Linux Troubleshooting Learning

These commands helped me understand some of the basic Linux troubleshooting workflow:

```text
Application/Service
       ↓
Check process
       ↓
ps / ps auxf
       ↓
Check port
       ↓
fuser
       ↓
Check logs
       ↓
tail / tail -f
```

These commands are useful when investigating problems such as:

- Application not starting
- Port already in use
- High CPU usage
- High memory usage
- Background processes
- Service failures
- Real-time application logs
- logs are generating continously


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


## ☁️ AWS VPC – Cloud Networking

I also started learning **AWS VPC (Virtual Private Cloud)** and understood how networking works inside AWS.

### 🌐 AWS VPC

I learned that a **VPC is an isolated virtual network in AWS** where I can launch resources such as EC2 instances.

I learned about:

- VPC and CIDR blocks
- Public and Private Subnets
- Route Tables
- Local Routes
- Internet Gateway (IGW)
- NAT Gateway
- Elastic IP
- Security Groups
- Network ACLs
- VPC Endpoints
- IAM Roles and Permissions

### 📡 Public and Private Subnets

I learned that a **public subnet** has a route to an Internet Gateway, while a **private subnet** does not have a direct route to the Internet Gateway.

For example:

```text
VPC: 10.0.0.0/16
        │
        ├── Public Subnet: 10.0.1.0/24
        │       └── Public EC2
        │
        └── Private Subnet: 10.0.2.0/24
                └── Private EC2
```

I also learned that a public and private EC2 instance in the same VPC can communicate using the **local route** without requiring a NAT Gateway.

### 🛣️ Route Tables

I learned how route tables decide where network traffic should go.

For example:

```text
Destination       Target
10.0.0.0/16       local
0.0.0.0/0         Internet Gateway
```

The `local` route is used for communication inside the VPC.

The `0.0.0.0/0` route is the **default route** and is used when the destination does not match a more specific route.

I also learned that `0.0.0.0/0` does **not** mean that everyone can access a resource. It represents a destination range for routing, while access is controlled separately using security mechanisms such as Security Groups and NACLs.

### 🌍 Internet Gateway and NAT Gateway

I learned that an **Internet Gateway (IGW)** provides internet connectivity for resources in a public subnet.

A **NAT Gateway** allows resources in a private subnet to make outbound connections to the internet without giving those resources public IP addresses.

```text
Private EC2
     ↓
NAT Gateway
     ↓
Internet Gateway
     ↓
Internet
```

I also learned that a NAT Gateway is normally placed in a **public subnet** and uses an Elastic IP.

### 🔐 Security Groups and NACLs

I learned that:

- **Security Group** controls traffic at the resource/instance level.
- **Network ACL** controls traffic at the subnet level.

For example, a private EC2 can allow SSH traffic from a public EC2 by allowing the required port in its Security Group.

### 🔗 VPC Endpoint

I learned that a **VPC Endpoint provides private connectivity between resources in a VPC and supported AWS services**.

For example:

```text
Private EC2
     ↓
VPC Endpoint
     ↓
S3
```

I also understood the difference between an **IAM Role** and a **VPC Endpoint**:

- **IAM Role → Provides permission**
- **VPC Endpoint → Provides private network connectivity**

Even when using a VPC Endpoint, appropriate IAM permissions are still required.

### 🔢 AWS Subnet IP Addresses

I learned that AWS reserves **5 IP addresses in every subnet**.

For example, a `/24` subnet contains:

```text
2^(32-24) = 256 total IP addresses

256 - 5 = 251 usable IP addresses
```

Therefore, a `/24` AWS subnet provides **251 usable IPv4 addresses**.

### 🔄 Loopback IP

I also learned about the **loopback IP address**.

The most commonly used IPv4 loopback address is:

```text
127.0.0.1
```

It refers to the **same machine** and is also commonly called `localhost`.

### 📚 Notes for VPC

For detailed VPC concepts and the related Terraform code, refer to the [`/notes`](./notes) folder.


### 🧠 Key Learning

By the end of Tuesday, I understood how **Docker Images, Containers, Networks, Volumes, and Docker Compose work together** to run a multi-container application.

---





