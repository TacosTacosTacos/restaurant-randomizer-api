#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/preferences"
TOKEN="BAhJIiU4YjhhMWFjMmJlODc3MWI1NDg0ZjEzNDYwNzRjZjhiMQY6BkVG--33b343e0b083ec74f9a03584ee9d69809458ed35"
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
