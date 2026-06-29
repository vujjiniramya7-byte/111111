// Runtime config — overwrite VITE_BACKEND_URL without rebuilding
window.__NNRG_CONFIG__ = {
  backendUrl: "http://127.0.0.1:8000"  // replaced by entrypoint.sh at container start
};
