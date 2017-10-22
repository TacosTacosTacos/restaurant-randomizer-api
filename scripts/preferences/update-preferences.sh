#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/preferences/"
TOKEN="BAhJIiUxYmEwMDNkODFlZDM1MTAzODJiNzA2ZWRlOWQ0YzY0MgY6BkVG--a177a6c483a6ca204056182eb42139b9a85822d8"
LOCATION="99991"
SEARCH_RADIUS=99772
# USER_ID=1
PREFERENCE_ID=12

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
