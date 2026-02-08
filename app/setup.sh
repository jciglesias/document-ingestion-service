#!/bin/bash
cat > /app/.streamlit/secrets.toml <<EOF
[connections.postgresql]
dialect = "postgresql"
host = "${POSTGRES_HOST}"
port = "5432"
database = "${POSTGRES_DB}"
username = "${POSTGRES_USER}"
password = "${POSTGRES_PASSWORD}"
EOF