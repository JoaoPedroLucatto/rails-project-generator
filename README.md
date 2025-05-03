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

### Generate project success 🚀
