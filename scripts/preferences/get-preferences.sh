API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/preferences"
TOKEN="4607ef3d7e46c7620b2c858c722c5566"
# USER_ID=1

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
