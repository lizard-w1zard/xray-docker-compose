# xray-docker-compose

Docker-based setup for Xray (VLESS over WebSocket) behind Nginx with TLS and optional fake frontend.  
Perfect for self-hosted, obfuscated, and TLS-protected Xray deployments.

## 📌 About Xray

This project uses [Xray](https://github.com/XTLS/Xray-core) under the hood — a high-performance proxy platform supporting VLESS, VMess, and more.

The Docker image is based on [teddysun/xray](https://hub.docker.com/r/teddysun/xray).

## ✨ Features

- ✅ Xray (VLESS + WebSocket)
- ✅ Nginx reverse proxy with TLS
- ✅ Config templating via envsubst
- ✅ Self-signed certificate support
- ✅ Fake static website as cover page
- ✅ Docker Compose deployment

## 🛠️ Development vs Production

This project runs fine locally with self-signed TLS certificates (see `./scripts/generate-dev-certs.sh`).  
However, for **production deployment**, you must replace them with valid TLS certificates.

We recommend [Let's Encrypt](https://letsencrypt.org/) with `certbot`:

📖 Official instructions:  
https://certbot.eff.org/instructions  
(choose your OS and "Nginx" as the software)

## 📦 Requirements

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/)

## 🚀 Quick Start

1. Clone the repo and create `.env` file:
   ```bash
   cp .env.example .env
   ```

2. (Optional) Generate self-signed certificates:
    ``` bash
    chmod +x ./scripts/generate-dev-certs.sh
    ./scripts/generate-dev-certs.sh
    ```

3. Run the project:
    ``` bash
    docker compose up -d --build
    ```

4. Open https://localhost in your browser to see the fake frontend.

## ⚙️ Environment Variables

The project can be flexible configured by replacing default content of environment variables.

| Variable   | Description                            | Example                      |
|------------|----------------------------------------|------------------------------|
| `UUID`     | UUID for Xray client authentication    | `c3...5d2a5d`                |
| `WS_PATH`  | WebSocket path (must start with `/`)   | `/ws_path`                   |
| `DOMAIN`   | Used in nginx `server_name` and footer | `yourdomain.com` or `localhost` |

You can generate a `UUID` using:

``` bash
uuidgen
# or
cat /proc/sys/kernel/random/uuid
```

Another way is to use: [uuidgenerator.net](https://www.uuidgenerator.net/)

## 🔐 Certificates

By default, the project expects TLS certificates in the `ssl/` directory:

- `ssl/cert.crt` — full chain cert
- `ssl/private.key` — private key

For local development, you can generate a self-signed certificate using:

```bash
./scripts/generate-dev-certs.sh
```

⚠️ Do not use self-signed certificates in production.

## 🐾 Decoy Site

This project includes a minimal static site (with a cat image 🐱) served by nginx at `/`.  
You can replace `index.html.tpl` and `cars.jpg` with your own content if desired.

## 📜 License

MIT — see [LICENSE](./LICENSE)

## 🛡️ Disclaimer

This project is provided for educational and testing purposes only.  
Use at your own risk. Respect the laws of your jurisdiction.