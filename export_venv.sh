export LANGFUSE_PUBLIC_KEY="sk-lf-44a33ad1-e3b5-4513-be02-569eb2e82bb2"
export LANGFUSE_SECRET_KEY="sk-lf-44a33ad1-e3b5-4513-be02-569eb2e82bb2"

export LANGFUSE_AUTH=$(printf '%s:%s' \
  "$LANGFUSE_PUBLIC_KEY" \
  "$LANGFUSE_SECRET_KEY" | base64 -w 0)

export OTEL_EXPORTER_OTLP_ENDPOINT="http://localhost:3000/api/public/otel"
export OTEL_EXPORTER_OTLP_HEADERS="Authorization=Basic $LANGFUSE_AUTH,x-langfuse-ingestion-version=4"


echo "Langfuse public key: ${LANGFUSE_PUBLIC_KEY:0:8}..."
echo "Langfuse secret key: ${LANGFUSE_SECRET_KEY:0:8}..."
echo "Langfuse auth: SET"
echo "OTEL endpoint: $OTEL_EXPORTER_OTLP_ENDPOINT"
echo "OTEL headers: SET"
