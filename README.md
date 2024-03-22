# ollama container

docker network create ollama

## Build Container

```bash
devcontainer build --workspace-folder . --platform linux/amd64 --image-name docker.io/robinmordasiewicz/ollama:latest --output type=docker --no-cache false
```

## Attach to running container

```bash
devcontainer exec --workspace-folder ./ /bin/bash
```

## Run a container from the cli

```bash
devcontainer up --workspace-folder ./
```
