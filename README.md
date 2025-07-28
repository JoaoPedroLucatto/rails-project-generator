# Rails Project Generator

This project is a helper tool to easily create new Rails 8 applications without installing Ruby, Rails, or dependencies on your local machine.

## ✅ Prerequisites

- Docker installed: [https://www.docker.com/get-started](https://www.docker.com/get-started)

## 🛠️ How to Use the Generator

1. Create a folder with your desired project name, for example:

```bash
mkdir new-project && cd new-project
```

2. Generate project

Use the variable **PROJECT_PATH** to map a volume with the container.

Exemple:

```bash
make build generate ARGS="--database=postgresql --skip-bundle --skip-javascript" PROJECT_PATH="./new-project"
```

### Docker Run Without make

If you prefer to run manually with Docker.

**-v $(pwd)/my-project:/app**: mounts your local my-project directory into the container at /app.

**-w /app**: sets the working directory inside the container, so the rails new command will be executed inside the /app folder.

```bash
docker run --rm \
  -v $(pwd)/my-project:/app \
  -w /app \
  joaopedrolucatto/rails-project-generator:latest \
  rails new . --database=postgresql --skip-bundle --skip-javascript
```
