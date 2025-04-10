# Generated by https://smithery.ai. See: https://smithery.ai/docs/config#dockerfile
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy source code into the container
COPY . .

# Install dependencies
# Installing required packages directly from pyproject.toml dependencies
RUN pip install --no-cache-dir python-dotenv httpx 'mcp[cli]>=1.5.0'

# Expose port if needed (optional, depending on your implementation)
# EXPOSE 8080

# Command to run the MCP server
CMD ["python", "main.py"]
