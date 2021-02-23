#!/bin/bash -e

rm -f "${ROOTFS_DIR}/etc/systemd/system/dhcpcd.service.d/wait.conf"

mkdir -p "${ROOTFS_DIR}/opt/sugar"
touch "${ROOTFS_DIR}/opt/sugar/mine.sh"
chmod +x "${ROOTFS_DIR}/opt/sugar/mine.sh"

cat >> "${ROOTFS_DIR}/opt/sugar/mine.sh" << EOL
#!/bin/sh -e

printf "Mine file was created\n"
EOL
