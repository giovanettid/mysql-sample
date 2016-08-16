#!/bin/bash
set -e

echo "SELECT 1 FROM USER;" | mysql --user="root" --password="$MYSQL_ROOT_PASSWORD" functional > /dev/null
echo "SELECT 1 FROM BATCH_JOB_SEQ;" | mysql --user="root" --password="$MYSQL_ROOT_PASSWORD" technical > /dev/null

exit $?