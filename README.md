# 🖥️ Windows 10 Virtualization & RDP (Docker & Railway)

Deploy a virtualized **Windows 10** instance (16 GB RAM / 556 GB SSD) with native **Remote Desktop (RDP)** and **In-Browser Web Viewer** support.

---

## 📋 System Specifications

| Specification | Configured Value |
| :--- | :--- |
| **OS Version** | **Windows 10** (`win10`) |
| **RAM** | **16 GB** |
| **Storage (SSD)** | **556 GB** |
| **CPU Cores** | **4 Cores** |
| **Username** | `admin` |
| **Password** | `root` |

---

## ☁️ Deploy on Railway (railway.com)

1. Push this folder to your GitHub repository:
   ```bash
   git init
   git add .
   git commit -m "Windows 10 16GB 556GB SSD Setup"
   git branch -M main
   git remote add origin <YOUR_GITHUB_REPO_URL>
   git push -u origin main
   ```
2. Open **[Railway](https://railway.com)** → **New Project** → **Deploy from GitHub repo**.
3. Under your service **Settings**, set public port to **`8006`**.
4. Open the generated Railway URL (e.g. `https://your-service.up.railway.app`) in your browser to view your Windows 10 desktop.

---

## 💻 Run Locally (Docker)

### 1. Launch Container
```bash
docker compose up -d
```

### 2. Check Logs / Installation Progress
```bash
docker compose logs -f
```

---

## 🔌 Connection Methods

### 1. In-Browser Web UI
- **Local**: [http://localhost:8006](http://localhost:8006)
- **Railway**: `https://<your-app>.up.railway.app`

### 2. Microsoft Remote Desktop (RDP / mstsc)
- **Address**: `localhost:3389` (or `<HOST_IP>:3389`)
- **Username**: `admin`
- **Password**: `root`
