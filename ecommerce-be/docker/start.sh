#!/bin/bash
set -e

echo "Starting PHP-FPM..."
# Start PHP-FPM in daemon mode
php-fpm -D

# Wait for PHP-FPM to start
sleep 3

# Verify PHP-FPM is running
if ! pgrep -x php-fpm > /dev/null; then
    echo "ERROR: PHP-FPM failed to start"
    php-fpm --test
    exit 1
fi

echo "PHP-FPM is running (PID: $(pgrep php-fpm))"

# Check if PHP-FPM is listening
if command -v ss > /dev/null; then
    ss -tuln | grep 9000 || echo "WARNING: Port 9000 check with ss"
elif command -v netstat > /dev/null; then
    netstat -tuln | grep 9000 || echo "WARNING: Port 9000 check with netstat"
fi

echo "Starting Nginx..."
# Test Nginx configuration
nginx -t

# Start Nginx in foreground
exec nginx -g "daemon off;"
