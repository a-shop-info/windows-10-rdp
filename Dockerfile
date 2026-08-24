FROM dockur/windows:latest

# Windows 10 Virtualization Configuration for Railway & Docker
ENV VERSION="win10"
ENV RAM_SIZE="16G"
ENV CPU_CORES="4"
ENV DISK_SIZE="556G"
ENV LANGUAGE="English"
ENV USERNAME="admin"
ENV PASSWORD="root"
ENV MANUAL="N"

# Expose Web Interface (8006) and RDP Protocol (3389)
EXPOSE 8006 3389
