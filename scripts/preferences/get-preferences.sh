API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/preferences"
TOKEN="BAhJIiUwZDI3Y2M5OGE2MDViMjRjOTE4NjRiMWQzYzViNTNlMQY6BkVG--fdc5a284d5b0f7a6ae5d2ea9b9aba13ea3d1f825"

# {"user":{"id":2,"email":"TestUser1@gmail.com","token":"BAhJIiUwZDI3Y2M5OGE2MDViMjRjOTE4NjRiMWQzYzViNTNlMQY6BkVG--fdc5a284d5b0f7a6ae5d2ea9b9aba13ea3d1f825","preferences":[{"id":4,"user_id":2,"location":"03878","search_radius":99779,"created_at":"2017-10-19T18:45:19.654Z","updated_at":"2017-10-19T18:45:19.654Z"}]}}
# ~/wdi/projects/restaurant-randomizer-api (preferences)


curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
