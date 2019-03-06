# Ansible-disk-exporter 
This is the ansible script for collect disk space as the metric for Node-exporter.
## Getting Started 
This script will:
- place `disk-monitor.sh` in the target machine at /opt/data/monitor/node-exporter.
- Change mode `disk-monitor.sh` to be executable.
- Place `disk-monitor.cron` at /etc/cron.d.
### Prerequisites
The machine needs to run Node-exporter and the custom-prom data must be at `opt/data/monitor/node-exporter`

You can follow this [link](https://git.proteus-tech.com/infrastructure/prometheus-grafana-deploy) to install the Node-expoter.


### How to run it
You can run the scrip using `ansible-playbook -i node-exporter.inventory node-exporter.yml`

You can change variables in `node-exporter.inventory`:

- USER : This variable lets you specify user.
- DESTINATION :This variable lets you specify the ip of machine you want to run the script.

### Results
You can check if everything works properly by query `node_disk_used_storage` in Prometheus or Grafana.
