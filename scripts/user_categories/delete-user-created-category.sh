#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_selected_categories/"
USER_SELECTED_CATEGORY_ID=1
TOKEN="BAhJIiU2YTc1MDAzOTI4YzUyOWE2NzI3Zjc1OTE3YmM5M2Y4NwY6BkVG--df1284100b1dd95a68ff2a82f6d9334591c7f9cd"
# USER_ID=1


curl "${API}${URL_PATH}/${USER_SELECTED_CATEGORY_ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
