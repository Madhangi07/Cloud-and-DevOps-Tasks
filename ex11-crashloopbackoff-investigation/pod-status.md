# Pod Status Investigation

## Incident

Pod Name

payment-service

Status

CrashLoopBackOff

## Logs

panic:
dial tcp 10.20.0.15:5432

connection refused

## Events

Back-off restarting failed container

## Observation

The application repeatedly crashes because it cannot establish a connection to the PostgreSQL database.