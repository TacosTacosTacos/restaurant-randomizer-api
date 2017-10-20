API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_selected_categories"
TOKEN="BAhJIiUyZTBjZDg2OWZjNzAyOGUyOTA2OTM0MGExZjRhNWM4ZAY6BkVG--a8b62bb2ad4a8f2a8d05cd8af3b4f8ddd749a80b"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
