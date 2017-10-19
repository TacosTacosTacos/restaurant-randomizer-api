#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/preferences/"
PREFERENCE_ID=7
TOKEN="BAhJIiUwZDI3Y2M5OGE2MDViMjRjOTE4NjRiMWQzYzViNTNlMQY6BkVG--fdc5a284d5b0f7a6ae5d2ea9b9aba13ea3d1f825"
# USER_ID=1


curl "${API}${URL_PATH}/${PREFERENCE_ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
