#!/usr/bin/env sh

for threadID in $(sqlite3 database.db 'SELECT id FROM __threadlists;'); do
  if [ "$threadID" != "__threadlists" ]; then
    sqlite3 database.db "ALTER TABLE '${threadID}' ADD furl TEXT;"
  fi
done
