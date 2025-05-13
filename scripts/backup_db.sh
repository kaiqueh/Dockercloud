#!/bin/bash

# Define database connection parameters
DB_NAME="your_database_name"
DB_USER="your_username"
DB_PASSWORD="your_password"
DB_HOST="localhost"
DB_PORT="5432"

# Define backup file name with timestamp
BACKUP_FILE="backup_$(date +'%Y%m%d_%H%M%S').sql"

# Export PGPASSWORD to avoid password prompt
export PGPASSWORD=$DB_PASSWORD

# Execute pg_dump to create a backup of the database
pg_dump -h $DB_HOST -p $DB_PORT -U $DB_USER $DB_NAME > $BACKUP_FILE

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup successful! Backup file: $BACKUP_FILE"
else
    echo "Backup failed!"
fi

# Unset PGPASSWORD for security
unset PGPASSWORD