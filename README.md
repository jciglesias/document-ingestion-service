# document-ingestion-service

Handle the ingestion and organisation of documents for easier retrieval.

## Project Structure

This project uses a devcontainer setup with Docker Compose to run a Streamlit application and PostgreSQL database.

### Components

- **Streamlit Application**: A Python-based web application for document ingestion
- **PostgreSQL Database**: Database for storing document metadata
- **Docker Compose**: Orchestrates both services with a bridge network
- **DevContainer**: VS Code development container configuration

## Getting Started

### Prerequisites

- Docker and Docker Compose
- VS Code with Remote - Containers extension (optional, for devcontainer support)

### Running with Docker Compose

1. Clone the repository:
   ```bash
   git clone https://github.com/jciglesias/document-ingestion-service.git
   cd document-ingestion-service
   ```

2. Start the services:
   ```bash
   docker compose up -d
   ```

3. Access the Streamlit application at: http://localhost:8501

4. Stop the services:
   ```bash
   docker compose down
   ```

### Using the DevContainer

1. Open the project in VS Code
2. When prompted, click "Reopen in Container" or use the Command Palette (F1) and select "Remote-Containers: Reopen in Container"
3. VS Code will build and start the containers, and open a terminal inside the app container
4. The Streamlit app will be automatically started and accessible at http://localhost:8501

## Configuration

### Environment Variables

The following environment variables are configured in `docker-compose.yml`:

- `POSTGRES_HOST`: Database host (default: `db`)
- `POSTGRES_DB`: Database name (default: `document_ingestion`)
- `POSTGRES_USER`: Database user (default: `postgres`)
- `POSTGRES_PASSWORD`: Database password (default: `postgres`)

### Persistent Storage

PostgreSQL data is stored in a named Docker volume `postgres_data`, ensuring data persists across container restarts.

### Network

Both services communicate over a bridge network called `app-network`.

## Development

### File Structure

```
.
├── .devcontainer/
│   └── devcontainer.json   # VS Code devcontainer configuration
├── app/
│   └── main.py             # Streamlit application
├── Dockerfile              # Python/Streamlit container image
├── docker-compose.yml      # Docker Compose configuration
└── requirements.txt        # Python dependencies
```

### Adding Dependencies

To add Python dependencies:

1. Add the package to `requirements.txt`
2. Rebuild the Docker image:
   ```bash
   docker compose build app
   docker compose up -d
   ```
