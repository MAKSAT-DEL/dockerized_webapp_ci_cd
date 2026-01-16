# dockerized_webapp_ci_cd
Dockerized web app with CI/CD deployed on AWS

This project demonstrates how to run a **Node.js application** behind **Nginx** using **Docker** and **Docker Compose**.
It is structured in a clean, production-like way and is suitable as a base for **CI/CD pipelines**.

---

## 📦 Project Structure

```
dockerized_webapp_ci_cd/
│
├── app/                  # Node.js application
│   ├── package.json
│   ├── package-lock.json
│   └── index.js
│
├── nginx/                # Nginx configuration
│   └── default.conf
│
├── Dockerfile             # Dockerfile for Node.js app
├── docker-compose.yml     # Multi-container setup
└── README.md
```

---

## 🚀 Technologies Used

* **Node.js 18 (Alpine)**
* **Nginx (Alpine)**
* **Docker**
* **Docker Compose**

---

## ⚙️ How It Works

* The **Node.js app** runs inside its own container on port `3000`
* **Nginx** runs in a separate container
* Nginx acts as a **reverse proxy** and forwards HTTP traffic to the Node.js service
* Containers communicate using Docker's internal network

---

## 🐳 Dockerfile (Node.js)

The Dockerfile builds a lightweight Node.js image:

* Uses `node:18-alpine`
* Installs dependencies
* Copies application source code
* Exposes port `3000`

---

## 🔧 docker-compose.yml

Docker Compose manages multiple services:

* **node-app** – Node.js backend
* **nginx** – Reverse proxy

Run everything with a single command.

---

## ▶️ How to Run

### 1️⃣ Build and start containers

```bash
docker-compose up --build
```

### 2️⃣ Open in browser

```
http://localhost
```

Nginx will forward requests to the Node.js app.

---

## 🛑 Stop and clean containers

```bash
docker-compose down
docker network prune -f
```

---

## 📌 Use Cases

* Learning Docker & Docker Compose
* Reverse proxy setup with Nginx
* Base project for CI/CD pipelines
* Interview / portfolio project

---

## 🧠 Notes

* `docker-compose` automatically creates a shared network
* Service names are used as DNS hostnames (e.g. `node-app`)
* No external ports are exposed for Node.js (only Nginx)

---

## 📄 License

This project is for educational purposes.
