mkdir ${ROOTFS_DIR}/home/${FIRST_USER_NAME}/linuxsampler
cp -R files/* ${ROOTFS_DIR}/home/${FIRST_USER_NAME}/linuxsampler 

on_chroot << EOF
    cd /home/${FIRST_USER_NAME}/linuxsampler
    dpkg -i libgig11_4.4.1_arm64.deb libgig-dev_4.4.1_arm64.deb
    dpkg -i liblinuxsampler_2.3.1_arm64.deb liblinuxsampler-dev_2.3.1_arm64.deb linuxsampler_2.3.1_arm64.deb
    cd ..
    rm -R linuxsampler
EOF