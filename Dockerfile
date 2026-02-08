FROM python:3.11-slim

WORKDIR /app

# Copy application code
COPY app/ /app/

RUN bash setup.sh
RUN pip install --no-cache-dir -r requirements.txt

# Expose Streamlit default port
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "main.py", "--server.address=0.0.0.0"]