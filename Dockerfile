FROM dockurr/windows:latest

# Ensure /storage and /storage/tmp exist with full permissions
RUN mkdir -p /storage/tmp && chmod 777 /storage/tmp

# Route temp download files directly to persistent storage volume
ENV TMPDIR="/storage/tmp"
ENV VERSION="xp"
ENV KVM="N"
ENV RAM_SIZE="512M"
ENV CPU_CORES="2"
ENV DISK_SIZE="10G"
ENV LANGUAGE="English"
ENV USERNAME="admin"
ENV PASSWORD="root"
ENV MANUAL="N"
ENV PORT="8006"

EXPOSE 8006 3389
