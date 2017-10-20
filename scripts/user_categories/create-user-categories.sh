#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_selected_categories"
TOKEN="BAhJIiUyZTBjZDg2OWZjNzAyOGUyOTA2OTM0MGExZjRhNWM4ZAY6BkVG--a8b62bb2ad4a8f2a8d05cd8af3b4f8ddd749a80b"
USER_ID=2
RESTAURANT_CATEGORY_ID=1
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
