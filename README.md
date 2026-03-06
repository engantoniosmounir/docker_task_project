# 🚀 Docker Task Manager - Production Stack

A production-ready full stack application built using **Docker Compose**, featuring **Nginx Load Balancing, Flask API, PostgreSQL, and Redis caching**.

This project demonstrates how to design and deploy a scalable containerized application using modern **DevOps practices**.

---

# 🏗 Architecture

User requests are handled through **Nginx**, which acts as a reverse proxy and load balancer distributing traffic between multiple Flask application containers.

User → Nginx → Flask (x2) → PostgreSQL

↘ Redis Cache
---

# ⚙️ Tech Stack

- Docker
- Docker Compose
- Nginx (Reverse Proxy + Load Balancer)
- Flask (Python API)
- PostgreSQL (Database)
- Redis (Caching Layer)
- Gunicorn (Production WSGI Server)
- OpenSSL (Self-signed SSL certificate)

---

# 📂 Project Structure

docker-project
│
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
├── flask_app.py
├── init.sql
│
├── conf
│ └── nginx.conf
│
├── ssl
│ └── generate_ssl.sh
│
├── static
│ └── style.css
│
└── README.md


---

# 🚀 Running the Project

## 1️⃣ Generate SSL Certificate

cd ssl
bash generate_ssl.sh
cd ..


---

## 2️⃣ Build and Start Containers
docker compose up -d --build


---

## 3️⃣ Check Container Status

docker compose ps


All services should show **healthy**.

---

# 🌐 Access the Application

Open in your browser:
https://localhost


You may need to bypass the SSL warning since the certificate is self-signed.

---

# 🧪 API Endpoints

| Method | Endpoint | Description |
|------|--------|-------------|
| GET | /api/health | Check service health |
| GET | /api/tasks | Retrieve all tasks |
| POST | /api/tasks | Create new task |
| PATCH | /api/tasks/{id}/done | Mark task as completed |

---

# ⚡ Load Balancing Test

Run multiple requests:
curl -k https://localhost/api/health


You should see alternating responses between:

flask1
flask2

indicating **Nginx load balancing is working**.

---

# 📊 Features

- Reverse Proxy with **Nginx**
- **Load Balancing** across multiple Flask containers
- **Redis caching** for faster API responses
- **PostgreSQL database initialization** via Docker
- **HTTPS support** with self-signed certificates
- **Docker multi-service orchestration**

---

# 🧑‍💻 Author

**Antonios Mounir**

DevOps Enthusiast | Docker | Linux | Cloud

GitHub:
https://github.com/YOUR_USERNAME

---

# 📜 License

This project is for educational purposes as part of a Docker Advanced course.
