#!/bin/bash
ip_data=$(ifconfig)
rdma_nic="rdma_NIC"
type="rxe"
device=$(echo "$ip_data" | head -n1 | awk '{print $1;}'| sed 's/://g')
server_ip=$(ifconfig | sed -n '2p' | awk '{print $2;}')
rdma link add $rdma_nic type $type netdev $device

echo "Setup finish."
echo "your server ip is : $server_ip"
