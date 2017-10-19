#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/preferences"
TOKEN="BAhJIiUxNDNhOTVjM2ZlMWUzMTYzOTkyMjdkNjBkZDY3Yjg3OQY6BkVG--a61ef8d42871780851626572bc016a608680fd66"
LOCATION="03878"
SEARCH_RADIUS=99779
USER_ID=1

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
