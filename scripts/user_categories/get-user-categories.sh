API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_selected_categories"
TOKEN="BAhJIiUxYmEwMDNkODFlZDM1MTAzODJiNzA2ZWRlOWQ0YzY0MgY6BkVG--a177a6c483a6ca204056182eb42139b9a85822d8"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
