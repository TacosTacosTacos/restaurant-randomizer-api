#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/preferences/"
PREFERENCE_ID=11
TOKEN="BAhJIiUzMjAzMjI0YjZiMTMxMDEwYWFiZWQ3NTUzYjZkN2FmMQY6BkVG--efea39497cd9d3d62f9690d8d87853cf986890d0"
# USER_ID=1


curl "${API}${URL_PATH}/${PREFERENCE_ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
