# Set up .pdsettings link for root user, so the same settings are used for normal and root user.
on_chroot << EOF
	ln -s /home/${FIRST_USER_NAME}/.pdsettings /root/.pdsettings
EOF

# Copy preconfigured PD settings.
cp files/.pdsettings ${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.pdsettings

# Install desktop shortcuts.
mkdir -p ${ROOTFS_DIR}/home/${FIRST_USER_NAME}/Desktop
cp files/Desktop/*.desktop ${ROOTFS_DIR}/home/${FIRST_USER_NAME}/Desktop/
