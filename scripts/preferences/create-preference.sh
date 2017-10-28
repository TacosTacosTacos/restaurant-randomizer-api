#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/preferences"
TOKEN="BAhJIiUzMjAzMjI0YjZiMTMxMDEwYWFiZWQ3NTUzYjZkN2FmMQY6BkVG--efea39497cd9d3d62f9690d8d87853cf986890d0"
LOCATION="03878"
SEARCH_RADIUS=99779

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "preference": {
      "location": "'"${LOCATION}"'",
      "search_radius": "'"${SEARCH_RADIUS}"'"
    }
  }'

echo
