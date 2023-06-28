#!/usr/bin/env sh

for threadID in $(sqlite3 database.db 'SELECT name FROM sqlite_schema;'); do
  sqlite3 database.db "ALTER TABLE '${threadID}' ADD furl TEXT;"
done
