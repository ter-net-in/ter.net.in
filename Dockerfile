# ── Stage 1: Build ───────────────────────────────────────────────────────────
FROM oven/bun:1-alpine AS builder

WORKDIR /app

COPY package.json bun.lockb* ./
RUN bun install --frozen-lockfile

COPY . .
RUN bun run build

# ── Stage 2: Serve ───────────────────────────────────────────────────────────
FROM caddy:2-alpine

COPY --from=builder /app/dist /srv
COPY Caddyfile.server /etc/caddy/Caddyfile

EXPOSE 80
