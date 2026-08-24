FROM dockurr/windows:latest

# Ensure /storage exists
RUN mkdir -p /storage /storage/tmp

# Disable strict host disk check in startup scripts so Railway containers run smoothly
RUN find / -name "*.sh" -exec sed -i 's/Insufficient free disk space/Skipping disk check/g' {} + 2>/dev/null || true
RUN find /run/ -name "*.sh" -exec sed -i 's/error "Insufficient free disk space.*"/info "Bypassing disk check"/g' {} + 2>/dev/null || true

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
