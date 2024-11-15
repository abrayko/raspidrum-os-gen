# Configure 1280x720 screen size by default.
sed -i -E "s/#?hdmi_group=[0-9]+/hdmi_group=2/" ${ROOTFS_DIR}/boot/config.txt
sed -i -E "s/#?hdmi_mode=[0-9]+/hdmi_mode=85/" ${ROOTFS_DIR}/boot/config.txt
sed -i -E "s/#?hdmi_force_hotplug=[0-9]+/hdmi_force_hotplug=1/" ${ROOTFS_DIR}/boot/config.txt
