# Trace Analysis

## Source

Grafana Tempo

## Request Flow

checkout-service
↓
inventory-service
↓
payment-service

## Execution Time

checkout-service

↓

inventory-service

↓

payment-service = 4.2 seconds

## Analysis

The distributed trace shows that most of the request time is spent inside the payment-service.

The payment-service is responsible for approximately 4.2 seconds of the total 4.8-second request duration.

## Bottleneck

payment-service

## Conclusion

The payment-service is the primary bottleneck causing the slow Checkout API.