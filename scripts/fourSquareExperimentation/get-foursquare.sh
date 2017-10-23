API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/foursquare"
TOKEN="BAhJIiVkNGE0MzgwYjQwOGJjNzMxOThhYTAyYjk0Yjk3NzVjNgY6BkVG--ab4e6bf358724942ac3774e84950f5084bd116b9"

# {"user":{"id":12,"email":"testuser9999@gmail.com","token":"BAhJIiVkNGE0MzgwYjQwOGJjNzMxOThhYTAyYjk0Yjk3NzVjNgY6BkVG--ab4e6bf358724942ac3774e84950f5084bd116b9","preference":{"id":14,"user_id":12,"location":"03878","search_radius":6,"created_at":"2017-10-23T13:54:27.115Z","updated_at":"2017-10-23T13:54:27.115Z"},"user_selected_categories":[{"id":104,"user_id":12,"restaurant_category_id":1,"created_at":"2017-10-23T13:54:27.040Z","updated_at":"2017-10-23T13:54:27.040Z"},{"id":105,"user_id":12,"restaurant_category_id":3,"created_at":"2017-10-23T13:54:27.043Z","updated_at":"2017-10-23T13:54:27.043Z"},{"id":106,"user_id":12,"restaurant_category_id":2,"created_at":"2017-10-23T13:54:27.045Z","updated_at":"2017-10-23T13:54:27.045Z"}]}}


curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
