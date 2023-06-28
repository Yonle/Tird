#!/usr/bin/env sh

for threadID in $(sqlite3 database.db 'SELECT name FROM sqlite_schema;'); do
  if [ "$threadID" != "__threadlists" ]; then
    sqlite3 database.db "ALTER TABLE '${threadID}' ADD furl TEXT;"
  fi
done
