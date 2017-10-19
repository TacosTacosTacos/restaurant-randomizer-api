#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/preferences/"
PREFERENCE_ID=1
TOKEN="4607ef3d7e46c7620b2c858c722c5566"
# USER_ID=1


curl "${API}${URL_PATH}/${PREFERENCE_ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
