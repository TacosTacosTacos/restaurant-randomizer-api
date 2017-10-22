#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_selected_categories"
TOKEN="BAhJIiUxYmEwMDNkODFlZDM1MTAzODJiNzA2ZWRlOWQ0YzY0MgY6BkVG--a177a6c483a6ca204056182eb42139b9a85822d8"
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
