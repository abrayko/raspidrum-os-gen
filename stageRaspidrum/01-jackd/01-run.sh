mkdir ${ROOTFS_DIR}/home/${FIRST_USER_NAME}/blokas-jack
cp -R files/* ${ROOTFS_DIR}/home/${FIRST_USER_NAME}/blokas-jack 

on_chroot << EOF
    cd /home/${FIRST_USER_NAME}/blokas-jack
    dpkg-buildpackage -b
    cd ..
    dpkg -i blokas-jack*.deb
    rm -R blokas-jack
    rm blokas-jack*
EOF