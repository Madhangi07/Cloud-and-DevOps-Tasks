# Root Cause Analysis

## DNS Issue

No

The application successfully resolved the database IP address (10.20.0.15).

## Database Issue

Yes

The database refused the TCP connection on port 5432.

Possible Reasons

- PostgreSQL is not running.
- Database Service is unavailable.
- Firewall or Network Policy blocks the connection.
- Wrong database host or port.

## Secret Issue

No evidence.

The error indicates "connection refused", not authentication failure.

## Final Root Cause

Database connectivity failure.