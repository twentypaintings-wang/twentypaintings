
FROM weishaw/sub2api:latest

USER sub2api

ENTRYPOINT ["/bin/sh", "-c", "echo HOSTLESS_PORT=${PORT:-unset}; export SERVER_HOST=0.0.0.0; export SERVER_PORT=${PORT:-8000}; echo SUB2API_PORT=$SERVER_PORT; exec /app/sub2api"]
