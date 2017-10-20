API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_selected_categories"
TOKEN="BAhJIiVlMmIxNDEzYTU0MTc1NzY5OGE2ZjllYjAyZTI5YmViOAY6BkVG--99a57e4f255e73ebbb440b5521129b4fd0696024"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
