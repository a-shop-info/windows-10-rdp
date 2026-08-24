FROM dockurr/windows:latest

# Create /storage directory with write permissions required by dockurr/windows
RUN mkdir -p /storage && chmod 777 /storage

# Environment Configuration for Railway & Cloud deployment
ENV VERSION="win10"
ENV KVM="N"
ENV RAM_SIZE="4G"
ENV CPU_CORES="2"
ENV DISK_SIZE="32G"
ENV LANGUAGE="English"
ENV USERNAME="admin"
ENV PASSWORD="root"
ENV MANUAL="N"
ENV PORT="8006"

VOLUME ["/storage"]

EXPOSE 8006 3389
