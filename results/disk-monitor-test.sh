#!/bin/bash
cat >  /home/card/Desktop/proteus/learning/ansible/ansible-disk-exporter/results/custom-prom/disk-monitor-test.prom << EOF
# HELP Disk_used_storage
# TYPE Disk_used_storage
node_disk_used_storage $(ssh -o StrictHostKeyChecking=no -i /home/card/.ssh/id_rsa -l card 127.0.0.1 "df -h | awk 'FNR == 3{print}' | awk '{print substr (\$5, 1, length(\$5)-1)}'")
EOF
