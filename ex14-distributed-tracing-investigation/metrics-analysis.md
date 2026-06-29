# Metrics Analysis

## Source

Prometheus

## Observation

- Request Count: Normal
- 95th Percentile Latency: 4.8 seconds

## Analysis

The number of incoming requests is normal.

This indicates that the application is not overloaded.

However, the response time is very high.

Therefore, the issue is related to request processing rather than traffic volume.

## Conclusion

Metrics indicate a latency issue but do not identify which service is responsible.