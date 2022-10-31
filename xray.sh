#!/bin/sh
if [ ! -f UUID ]; then
  UUID="45527539-d113-479b-af92-cf1cae80bfe7"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

