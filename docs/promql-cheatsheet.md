

#CPU Usage
100 - (avg by(instance)(rate(node_cpu_seconds_total{mode="idle"}[5m])) * 100)

#Memory Usage
(1 - (node_memory_MemAvailable_bytes/node_memory_MemTotal_bytes))*100

#Disk Usage
100 - (
node_filesystem_avail_bytes{mountpoint="/"} *100
/
node_filesystem_size_bytes{mountpoint="/"}
)
