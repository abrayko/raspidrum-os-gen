on_chroot << EOF
	chown -R ${FIRST_USER_NAME} /home/${FIRST_USER_NAME}
	chgrp -R ${FIRST_USER_NAME} /home/${FIRST_USER_NAME}

	apt-get update
	apt-get upgrade -y
	apt-get autoremove -y
EOF
