API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/preferences"
TOKEN="BAhJIiU4YjhhMWFjMmJlODc3MWI1NDg0ZjEzNDYwNzRjZjhiMQY6BkVG--33b343e0b083ec74f9a03584ee9d69809458ed35"

# {"user":{"id":2,"email":"TestUser1@gmail.com","token":"BAhJIiUzYzI2OTNmZWQ2MDVkZDZkYzJkMmNjMzdiM2IwZjczMwY6BkVG--c5aa1745aea6bb3268f86dd2bde01aef4851f5be","preference":{"id":8,"user_id":2,"location":"03878","search_radius":99772,"created_at":"2017-10-19T19:07:28.675Z","updated_at":"2017-10-19T19:09:09.535Z"}}}
# ~/wdi/projects/restaurant-randomizer-api (preferences)


curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
