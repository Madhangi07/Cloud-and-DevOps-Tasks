# Logging Architecture

## Components

### Application

Generates logs continuously during runtime.

Example:

- User Login
- Payment Success
- Database Connected

---

### Alloy

Acts as the log collector.

Responsibilities:

- Read application logs.
- Process logs.
- Forward logs to Loki.

---

### Loki

Stores logs received from Alloy.

Responsibilities:

- Accept log streams.
- Index metadata.
- Store logs.
- Respond to Grafana queries.

---

### Grafana

Visualizes logs stored inside Loki.

Grafana does not collect or store logs.

It only queries Loki and displays results.

---

## Log Flow

Application

↓

Alloy

↓

Loki

↓

Grafana