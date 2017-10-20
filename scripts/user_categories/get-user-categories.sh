API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_selected_categories"
TOKEN="BAhJIiU4YjhhMWFjMmJlODc3MWI1NDg0ZjEzNDYwNzRjZjhiMQY6BkVG--33b343e0b083ec74f9a03584ee9d69809458ed35"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
