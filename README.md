# Telemac

A quick, easy and familiar way to collect, store and view your Mac's system
metrics. Using `telegraf` agent running locally, and docker-rised `influxdb`
and `grafana`.

Persistent volumes have been created to maintain data across restarts and
destruction of the services in Docker.

## Requirements
- `brew`
- `docker-compose`

## Install

```
make install
```

## Remove
```
make remove
```

## Dashboards
Grafana is available at: http://localhost:3000

### Default Login
- Username: `admin`
- Password: `admin`

### Custom Dashboards
You can create custom dashboards in the UI, export the JSON and add them to:
- `./grafana/data/dashboards/custom/`
