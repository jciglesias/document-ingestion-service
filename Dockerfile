FROM python:alpine

WORKDIR /app

# Copy application code
COPY app/ /app/

RUN pip install --no-cache-dir -r requirements.txt

# Expose Streamlit default port
EXPOSE 8501

# Run the Streamlit app
CMD ["/bin/bash", "run.sh"]