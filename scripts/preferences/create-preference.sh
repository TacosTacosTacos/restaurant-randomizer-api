#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/preferences"
TOKEN="BAhJIiUwZDI3Y2M5OGE2MDViMjRjOTE4NjRiMWQzYzViNTNlMQY6BkVG--fdc5a284d5b0f7a6ae5d2ea9b9aba13ea3d1f825"
LOCATION="03878"
SEARCH_RADIUS=99779
USER_ID=2

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "preference": {
      "location": "'"${LOCATION}"'",
      "search_radius": "'"${SEARCH_RADIUS}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'

echo
