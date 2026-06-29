#!/bin/sh
# Write runtime config so the frontend knows where the backend is
# without needing to be rebuilt when the URL changes.
BACKEND_URL="${BACKEND_URL:-http://127.0.0.1:8000}"
cat > /usr/share/nginx/html/config.js << JS
window.__NNRG_CONFIG__ = { backendUrl: "${BACKEND_URL}" };
JS
exec nginx -g "daemon off;"
