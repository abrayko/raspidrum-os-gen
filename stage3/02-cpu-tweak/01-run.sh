install -m 644 files/*.service ${ROOTFS_DIR}/usr/lib/systemd/system

on_chroot << EOF
	systemctl daemon-reload

	systemctl enable cpu_performance_scaling_governor
	systemctl disable raspi-config # raspi-config is only enabling 'ondemand' governor as of 2018.08.19

EOF
