CREATE TABLE IF NOT EXISTS internet_metrics (
    time TIMESTAMPTZ NOT NULL,
    internet_status BOOLEAN NOT NULL,
    latency DOUBLE PRECISION
);