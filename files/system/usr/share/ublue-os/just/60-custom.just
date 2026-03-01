enable-secure-boot-stoyan:
    #!/usr/bin/bash
    ENROLLMENT_PASSWORD="stoyan"
    SECUREBOOT_KEY=/usr/share/cert/MOK.der
    sudo mokutil --timeout -1
    echo -e "$ENROLLMENT_PASSWORD\n$ENROLLMENT_PASSWORD" | sudo mokutil --import "$SECUREBOOT_KEY"
    echo 'At next reboot, the mokutil UEFI menu UI will be displayed, use "stoyan" as the password.'