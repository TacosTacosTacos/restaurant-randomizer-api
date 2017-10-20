#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_selected_categories"
TOKEN="BAhJIiVlMmIxNDEzYTU0MTc1NzY5OGE2ZjllYjAyZTI5YmViOAY6BkVG--99a57e4f255e73ebbb440b5521129b4fd0696024"
USER_ID=2
RESTAURANT_CATEGORY_ID=2
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
