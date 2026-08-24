# 🖥️ Windows Virtualization & Cloud RDP

Run high-performance Windows virtual machines locally or in the cloud for free with full administrative access.

---

## ⚡ Option 1: Free Dedicated Cloud Windows VM (GitHub Actions)

Get a **fast cloud Windows machine (16 GB RAM, 4 vCPUs, SSD)** with full hardware virtualization:

### How to Start:
1. Open your repository on GitHub: **[`https://github.com/a-shop-info/windows-10-rdp`](https://github.com/a-shop-info/windows-10-rdp)**
2. Click the **Actions** tab at the top.
3. Select **Windows Cloud RDP** in the left sidebar.
4. Click **Run workflow**:
   * **Ngrok Auth Token**: Paste your token from [dashboard.ngrok.com](https://dashboard.ngrok.com/get-started/your-authtoken) (Free account)
   * **Region**: Select your closest region (`us`, `eu`, `ap`, `in`, `jp`, etc.)
   * **Password**: Set your desired password (e.g. `Password123!`)
5. Click **Run workflow**.
6. Open the running job logs under **Display Connection Credentials** to get your:
   * **RDP Address**: `0.tcp.ngrok.io:xxxxx`
   * **Username**: `runneradmin` (or `admin`)
   * **Password**: Your set password

---

## 💻 Option 2: Run Locally (Docker)

If running on your local machine with Docker:

```bash
docker compose up -d
```

- **Web Browser Viewer**: [http://localhost:8006](http://localhost:8006)
- **RDP Client**: `localhost:3389` (`admin` / `root`)
