# spark-docker-image

This repository contains a Dockerfile to build a Spark-related image. The instructions below explain how to build the Docker image locally and how to run it using Docker Compose on Windows (PowerShell examples included).

**Prerequisites**
- **Docker:** Docker Desktop installed and running. Ensure `docker` and `docker compose` are available in your PATH.
- **PowerShell:** Examples below use Windows PowerShell (v5.1). They also work in PowerShell Core with minor differences.

**Build the Docker image**

- **From the repository root (where the `Dockerfile` is):** Build an image and give it a tag.

```powershell
# Build the image and tag it as 'spark-docker-image:latest'
docker build -t spark-docker-image:latest .

# Verify the image was created
docker images | Where-Object { $_.Repository -like 'spark-docker-image*' }
```

- **Tag and push to a registry (optional):**

```powershell
# Tag for Docker Hub (replace <username>)
docker tag spark-docker-image:latest <username>/spark-docker-image:latest

# Push to Docker Hub (you may need to login first)
docker push <username>/spark-docker-image:latest
```

**Run with Docker Compose**

Below is a minimal `docker-compose.yml` example you can use to run the image. Create a file named `docker-compose.yml` in this repository with the contents below, or adapt it to your needs.

```yaml
version: '3.8'
services:
	spark:
		build: .              # build from the Dockerfile in this directory
		image: spark-docker-image:latest
		container_name: spark-container
		# Example: expose ports (adjust as needed for your image)
		ports:
			- "8080:8080"
		# Example: mount a local data folder
		volumes:
			- ./data:/data
		environment:
			- EXAMPLE_ENV=production
		restart: unless-stopped

# If you prefer to use a pre-built image from a registry, replace 'build' with 'image:' and remove 'build:' line.
```

- **Start the service (build + run):**

```powershell
# Build (if needed) and start in the foreground
docker compose up --build

# Start in detached mode
docker compose up --build -d

# Stop and remove containers, networks
docker compose down
```

**Notes & Troubleshooting**
- If your Docker installation still uses the legacy `docker-compose` binary, use `docker-compose up --build` instead of `docker compose up --build`.
- If ports are in use, change the host port on the left side of the mapping (`HOST:CONTAINER`) in the compose file.
- On Windows, file permission or line-ending differences can occasionally affect mounted volumes — prefer Unix-style line endings in scripts inside the container.

**Quick examples**
- Build image locally:

```powershell
docker build -t spark-docker-image:latest .
```

- Build and run with Docker Compose (detached):

```powershell
docker compose up --build -d
docker compose logs -f
```

**Next steps / suggestions**
- Add a `docker-compose.override.yml` for development overrides (volumes, command overrides, extra env vars).
- Add a small healthcheck to the `docker-compose.yml` if your image exposes an HTTP/service port.
- Add CI steps to build and push the image automatically (GitHub Actions, Azure Pipelines, etc.).

If you want, I can also add a sample `docker-compose.yml` file to the repository or customize the README for a specific runtime behavior of your Dockerfile — tell me which ports or environment variables your image needs.

