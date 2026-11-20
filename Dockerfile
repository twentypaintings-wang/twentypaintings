
FROM weishaw/sub2api:latest

USER sub2api

ENTRYPOINT ["/bin/sh", "-c", "export SERVER_HOST=0.0.0.0; export SERVER_PORT=${PORT:-8000}; exec /app/sub2api"]
