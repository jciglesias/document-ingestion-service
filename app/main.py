import streamlit as st
import os

st.title("Document Ingestion Service")

st.write("Welcome to the Document Ingestion Service!")

# Display connection information
st.subheader("Configuration")
st.write(f"PostgreSQL Host: {os.getenv('POSTGRES_HOST', 'db')}")
st.write(f"PostgreSQL Database: {os.getenv('POSTGRES_DB', 'document_ingestion')}")

st.subheader("Status")
st.success("Application is running!")

# Add a simple file uploader
st.subheader("Upload Document")
uploaded_file = st.file_uploader("Choose a file")
if uploaded_file is not None:
    st.write(f"File uploaded: {uploaded_file.name}")
    st.write(f"File size: {uploaded_file.size} bytes")
