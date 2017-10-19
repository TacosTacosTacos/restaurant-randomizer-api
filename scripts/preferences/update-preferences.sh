#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/preferences/"
TOKEN="BAhJIiUwZDI3Y2M5OGE2MDViMjRjOTE4NjRiMWQzYzViNTNlMQY6BkVG--fdc5a284d5b0f7a6ae5d2ea9b9aba13ea3d1f825"
LOCATION="03878"
SEARCH_RADIUS=99772
# USER_ID=1
PREFERENCE_ID=8


curl "${API}${URL_PATH}/${PREFERENCE_ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
  "preference": {
    "location": "'"${LOCATION}"'",
    "search_radius": "'"${SEARCH_RADIUS}"'"
  }
}'

echo
