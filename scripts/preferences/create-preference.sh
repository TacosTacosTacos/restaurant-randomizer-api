#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/preferences"
TOKEN="4607ef3d7e46c7620b2c858c722c5566"
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
