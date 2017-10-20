#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_selected_categories/"
USER_SELECTED_CATEGORY_ID=4
TOKEN="BAhJIiVlMmIxNDEzYTU0MTc1NzY5OGE2ZjllYjAyZTI5YmViOAY6BkVG--99a57e4f255e73ebbb440b5521129b4fd0696024"
# USER_ID=1


curl "${API}${URL_PATH}/${USER_SELECTED_CATEGORY_ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
