#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_selected_categories"
TOKEN="BAhJIiUzMjAzMjI0YjZiMTMxMDEwYWFiZWQ3NTUzYjZkN2FmMQY6BkVG--efea39497cd9d3d62f9690d8d87853cf986890d0"
USER_ID=1
RESTAURANT_CATEGORY_ID=4
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "user_selected_category": {
      "restaurant_category_id": "'"${RESTAURANT_CATEGORY_ID}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'

echo
