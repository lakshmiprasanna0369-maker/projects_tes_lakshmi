# Stage 1 - Build stage
FROM alpine AS builder

WORKDIR /app
COPY . .

# Stage 2 - Final stage
FROM nginx:alpine

COPY --from=builder /app /usr/share/nginx/html
