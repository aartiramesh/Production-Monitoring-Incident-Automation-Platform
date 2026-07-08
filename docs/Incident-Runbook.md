# Incident: High CPU Usage

## Alert

HighCPUUsage

## Symptoms

- Grafana CPU > 80%
- Prometheus Alert = Firing

## Investigation

```bash
top
ps -ef
vmstat
```

## Root Cause

CPU-intensive process was consuming system resources.

## Resolution

```bash
pkill yes
```

## Verification

- CPU usage returned to normal.
- Alert status changed to Inactive.
