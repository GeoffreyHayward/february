# february
Experimenting with making node-red work for production. 

# Local Development vs Production

## Local Development:
- Build without arguments (`docker build -t my-nodered:dev .`) or explicitly `--build-arg ENV_MODE=development`.
- The editor is available at `http://localhost:1880/` (because `httpAdminRoot` is `/`).
- Logging level is `debug`.

## Production:
- Pass `--build-arg ENV_MODE=production`.
- The editor is disabled (`httpAdminRoot: false`).
- Logging level is `info`.

# Building and Running

## Development build (default):
```text
docker build -t my-nodered:dev .
docker run -p 1880:1880 my-nodered:dev
```

## Production build:
```text
docker build --build-arg ENV_MODE=production -t my-nodered:prod .
docker run -p 1880:1880 my-nodered:prod
```