FROM dockur/windows:latest

# Environment Configuration for Railway
ENV VERSION="win10"
ENV RAM_SIZE="4G"
ENV CPU_CORES="2"
ENV DISK_SIZE="64G"
ENV LANGUAGE="English"
ENV USERNAME="admin"
ENV PASSWORD="root"
ENV MANUAL="N"
ENV PORT="8006"

EXPOSE 8006 3389
