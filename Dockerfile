# ============================================
# Dockerfile Template - Python Application
# ============================================
# 
# INSTRUCTIONS:
# 1. Copy this file to your project root as "Dockerfile"
# 2. Update the comments marked with TODO
# 3. Adjust commands for your specific project
#
# ============================================

FROM python:3.13-slim

# Create non-root user for security
RUN groupadd -g 1001 appgroup && \
    useradd -u 1001 -g appgroup appuser

WORKDIR /app

# Install dependencies first (better caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source
# TODO: Adjust if your source is in a different folder
COPY . .

# Set ownership to non-root user
RUN chown -R appuser:appgroup /app

USER appuser

# TODO: Change to your application's port
# changed to 8080
EXPOSE 8080

# Health check
# TODO: Update the health check URL to match your application
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:8080/health || exit 1

# TODO: Update for your application
# For Flask:
CMD ["python", "app.py"]

# For Flask with gunicorn (production):
# CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]

# For FastAPI with uvicorn:
# CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]
