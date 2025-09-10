# xray-docker-compose

Docker-based setup for Xray (VLESS over REALITY).  
Perfect for self-hosted, obfuscated, and TLS-protected Xray deployments.

## 📌 About Xray

This project uses [Xray](https://github.com/XTLS/Xray-core) under the hood — a high-performance proxy platform supporting VLESS, VMess, and more.

The Docker image is based on [teddysun/xray](https://hub.docker.com/r/teddysun/xray).

## ✨ Features

- ✅ Xray (VLESS + REALITY)
- ✅ Config templating via envsubst
- ✅ Docker Compose deployment

## 📦 Requirements

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/)

## 🚀 Quick Start

1. Clone the repo and create `.env` file:
   ```bash
   cp .env.example .env
   ```

2. Generate REALITY keys:
    ``` bash
    docker compose run --rm xray xray x25519
    ```

3. Generate random SID:
    ``` bash
    openssl rand -hex 8
    ```

4. Generate UUID:
    ``` bash
    uuidgen
    # or
    cat /proc/sys/kernel/random/uuid
    ```

5. Fill variables in .env with your data

6. Run the project:
    ``` bash
    docker compose up -d --build
    ```

## ⚙️ Environment Variables

The project can be flexible configured by replacing default content of environment variables.

| Variable   | Description                            | Example                      |
|------------|----------------------------------------|------------------------------|
| `DEST`     | Any famous site working with TLS       | `www.cloudflare.com`         |
| `PRIVATE_KEY` | Private key generated in step 2     | `aN...ITXM`                  |
| `SID`      | Short identificator generated in step 3 | `d1...a09a`                 |
| `UUID`     | UUID for Xray client authentication generatend in step 4    | `c3...5d2a5d` |

## 📜 License

MIT — see [LICENSE](./LICENSE)

## 🛡️ Disclaimer

This project is provided for educational and testing purposes only.  
Use at your own risk. Respect the laws of your jurisdiction.