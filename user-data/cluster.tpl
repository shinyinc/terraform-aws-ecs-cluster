#!/bin/bash
echo "ECS_CLUSTER=${cluster_name}" > /etc/ecs/ecs.config
mkfs -t ext4 /dev/xvdb
mkdir /mnt/disk1
echo "/dev/xvdb /opt/mount1 ext4 defaults,nofail 0 2" >> /etc/fstab
mount -a

