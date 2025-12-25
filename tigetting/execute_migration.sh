#!/bin/bash

# Configuration - Defaults to values from application.yaml
DB_HOST=${DB_HOST:-"127.0.0.1"}
DB_PORT=${DB_PORT:-"3306"}
DB_USER=${DB_USER:-"ssafy"}
DB_PASS=${DB_PASS:-"ssafy"}
DB_NAME=${DB_NAME:-"tget"}

# File paths
SCHEMA_FILE="src/main/resources/db/Tget_Schema_v2.sql"
DATA_FILE="src/main/resources/db/insert_all_data.sql"

echo "============================================"
echo "Starting Database Migration for 'tigetting'"
echo "Target DB: $DB_NAME @ $DB_HOST:$DB_PORT"
echo "User: $DB_USER"
echo "============================================"

# Check if mysql client is installed
if ! command -v mysql &> /dev/null; then
    echo "Error: 'mysql' command not found. Please install MySQL client."
    exit 1
fi

# Function to execute SQL file
execute_sql() {
    local file=$1
    echo "Executing $file..."
    # Pass DB_NAME as argument to mysql to ensure correct database context
    mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$file"
    
    if [ $? -eq 0 ]; then
        echo "Successfully executed $file"
    else
        echo "Error executing $file"
        exit 1
    fi
}

# Run Schema Migration
if [ -f "$SCHEMA_FILE" ]; then
    execute_sql "$SCHEMA_FILE"
else
    echo "Error: Schema file not found at $SCHEMA_FILE"
    exit 1
fi

# Run Reservations Schema (Added)
RESERVATIONS_FILE="src/main/resources/db/reservations_schema.sql"
if [ -f "$RESERVATIONS_FILE" ]; then
    execute_sql "$RESERVATIONS_FILE"
else
    echo "Warning: Reservations schema file not found at $RESERVATIONS_FILE"
fi

# Run Data Insertion
if [ -f "$DATA_FILE" ]; then
    execute_sql "$DATA_FILE"
else
    echo "Error: Data file not found at $DATA_FILE"
    exit 1
fi

echo "============================================"
echo "Migration Completed Successfully!"
echo "============================================"
