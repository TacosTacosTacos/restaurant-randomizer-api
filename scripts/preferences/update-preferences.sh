#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/preferences/"
TOKEN="BAhJIiU4YjhhMWFjMmJlODc3MWI1NDg0ZjEzNDYwNzRjZjhiMQY6BkVG--33b343e0b083ec74f9a03584ee9d69809458ed35"
LOCATION="99991"
SEARCH_RADIUS=99772
# USER_ID=1
PREFERENCE_ID=10

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
