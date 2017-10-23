## Restaurant Randomizer API

# Description
A website that is used to randomly pick a location to eat based on user preferences and set location.  I based it off of stuff I have seen similar simple crud learning apps that I have seen online.  I have a use for it because some of my coworkers can't always decided where they want to go to get food.

## Website URLs
https://tacostacostacos.github.io/restaurant-randomizer-ui/
https://github.com/TacosTacosTacos/restaurant-randomizer-ui

https://restaurant-randomizer-api.herokuapp.com/
https://github.com/TacosTacosTacos/restaurant-randomizer-api

## List technologies used
Ruby, Ruby on Rails
<!-- , Four Square API -->

## List unsolved problems which would be fixed in future iterations.
On the API side,  I would try to make my Four Square call more rebust.  The way that it handles errors is functional, but isn't great.  I wouldn't loop through each category if I get a 400 error after the first iteration through the .map loop.

## Document your planning and tell a story about your development process and problem-solving strategy.
Based on my experience with the last project, I decided that I would rather focus on implementing and trying out new functionality rather than making a super clean UI.  I spent too much time during the Tic-Tac-Toe project on creating a nav and keeping to the original scope, that I didn't challenge myself at all.  This time around, while I did make sure that I met the requirements first, anything that was outside of requirements was backburnered.  Because of this, I created the site using mockup data.  This defeats the purpose of the site, and moves away from the original vision, but it meets requirements, and does some of the work I would have needed to do anyways to set it up with a custom api call.

## Link to Entity Relationship Diagram (ERD).
![https://ibb.co/gxuEam](https://image.ibb.co/hrvy1R/erdplus_diagram_2.png)

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

#### POST /sign-up

Request:

```sh
curl http://localhost:4741/sign-up \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=ava@bob.com PASSWORD=hannah scripts/sign-up.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id":9,
    "email":"TestUser1434@gmail.com",
    "preference":null,
    "user_selected_categories":[]
  }
}
```

#### POST /sign-in

Request:

```sh
curl http://localhost:4741/sign-in \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=ava@bob.com PASSWORD=hannah scripts/sign-in.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "ava@bob.com",
    "token": "BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f",
    "preference":null,
    "user_selected_categories":[]
  }
}
```

#### PATCH /change-password/:id

Request:

```sh
curl --include --request PATCH "http://localhost:4741/change-password/$ID" \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'
```

```sh
ID=1 OLDPW=hannah NEWPW=elle TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/change-password.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

#### DELETE /sign-out/:id

Request:

```sh
curl http://localhost:4741/sign-out/$ID \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=1 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/sign-out.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

### Users

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/1`  | `users#show`      |

#### GET /users

Request:

```sh
curl http://localhost:4741/users \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```

```sh
TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/users.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
   "users":[
      {
         "id":1,
         "email":"TestUser5@gmail.com",
         "preference":null,
         "user_selected_categories":[
            {
               "id":1,
               "user_id":1,
               "restaurant_category_id":1,
               "created_at":"2017-10-20T15:21:04.750Z",
               "updated_at":"2017-10-20T15:21:04.750Z"
            }
         ]
      },
      {
         "id":5,
         "email":"TestUser122@gmail.com",
         "preference":{
            "id":11,
            "user_id":5,
            "location":"d",
            "search_radius":1,
            "created_at":"2017-10-21T17:52:44.025Z",
            "updated_at":"2017-10-21T17:52:44.025Z"
         },
         "user_selected_categories":[
            {
               "id":100,
               "user_id":5,
               "restaurant_category_id":6,
               "created_at":"2017-10-21T18:03:32.426Z",
               "updated_at":"2017-10-21T18:03:32.426Z"
            }
         ]
      }
   ]
}
```

#### GET /users/:id

Request:

```sh
curl --include --request GET http://localhost:4741/users/$ID \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=2 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/user.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
   "user":{
      "id":1,
      "email":"TestUser5@gmail.com",
      "preference":null,
      "user_selected_categories":[
         {
            "id":1,
            "user_id":1,
            "restaurant_category_id":1,
            "created_at":"2017-10-20T15:21:04.750Z",
            "updated_at":"2017-10-20T15:21:04.750Z"
         }
      ]
   }
}
```


### Preferences

| Verb   | URI Pattern    | Controller#Action  |
|--------|----------------|--------------------|
| GET    | `/preferences` | `index`            |
| GET    | `/preferences` | `show`             |
| POST   | `/preferences` | `create`           |
| PATCH  | `/preferences` | `update`           |
| DELETE | `/preferences` | `destroy`          |

#### GET /preferences

Request:

```sh
curl --include --request GET http://localhost:4741/preferences/ \
  --header "Authorization: Token token=$TOKEN"
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
   "preference":{
      "id":12,
      "location":"03878",
      "search_radius":99779,
      "user_id":1
   }
}
```

Request:

```sh
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```
Response:

```md
{
   "preference":{
      "id":12,
      "location":"03878",
      "search_radius":99779,
      "user_id":1
   }
}
```

#### POST /preferences

Request:

```sh
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "preference": {
      "location": "'"${LOCATION}"'",
      "search_radius": "'"${SEARCH_RADIUS}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
   "preference":{
      "id":12,
      "location":"03878",
      "search_radius":99779,
      "user_id":1
   }
}
```



#### PATCH /preferences

Request:

```sh
curl "${API}${URL_PATH}/${PREFERENCE_ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
  "preference": {
    "location": "'"${LOCATION}"'",
    "search_radius": "'"${SEARCH_RADIUS}"'"
  }
}'
```

Response:

```md
{
   "preference":{
      "id":12,
      "location":"03878",
      "search_radius":99779,
      "user_id":1
   }
}
```

#### DELETE /preference/:id

Request:

```sh
curl http://localhost:4741/preferences/$ID \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
```

Response:

```md
HTTP/1.1 204 No Content
```
### User Categories
| Verb   | URI Pattern                                     | Controller#Action   |
|--------|-------------------------------------------------|---------------------|
| POST   | `/user_selected_categories/:restaraunt_type_id` | `create`            |
| GET    | `/user_selected_categories`                     | `get`               |
| DELETE | `/user_selected_categories/:restaraunt_type_id` | `destroy`           |

#### POST /user_selected_categories/:restaraunt_type_id

Request:

```sh
curl http://localhost:4741/user_selected_categories/:restaraunt_type_id\
  --include \
  --request POST \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "user_selected_category": {
      "restaurant_category_id": "'"${RESTAURANT_CATEGORY_ID}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
   "user_selected_category":{
      "id":101,
      "user_id":1,
      "restaurant_category_id":4,
      "restaurant_category":{
         "id":4,
         "four_square_id":"4bf58dd8d48988d10f941735",
         "name":"Indian"
      }
   }
}
```


#### GET /user_restaraunt_blacklist

Request:

```sh
curl --include --request GET http://localhost:4741/user_selected_categories/ \
  --header "Authorization: Token token=$TOKEN"
  --data
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
   "user_selected_category":{
      "id":101,
      "user_id":1,
      "restaurant_category_id":4,
      "restaurant_category":{
         "id":4,
         "four_square_id":"4bf58dd8d48988d10f941735",
         "name":"Indian"
      }
   }
}
```


#### DELETE /user_restaraunt_blacklist/:restaraunt_type_id

Request:

```sh
curl http://localhost:4741/user_selected_categories/:restaraunt_type_id \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
```

Response:

```md
HTTP/1.1 204 No Content
```

### User Categories
| Verb   | URI Pattern   | Controller#Action         |
|--------|---------------|---------------------------|
| GET    | `/foursquare` | `foursquare#retrieveData` |

#### GET /foursquare

Request:

```sh
curl --include --request GET http://localhost:4741/foursquare/ \
  --header "Authorization: Token token=$TOKEN"
  --data
```

Response:
See https://developer.foursquare.com/docs/api/venues/search for more details
```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
{
   "meta":{
      "code":200,
      "requestId":"59ee10b51ed2196848338f63"
   },
   "response":{
      "venues":[
         {
            "id":"4b48d0fef964a520645826e3",
            "name":"Market Basket",
            "contact":{
               "phone":"6034360413",
               "formattedPhone":"(603) 436-0413"
            },
            "location":{
               "address":"1465 Woodbury Ave",
               "lat":43.08740089814562,
               "lng":-70.78736577017764,
               "labeledLatLngs":[
                  {
                     "label":"display",
                     "lat":43.08740089814562,
                     "lng":-70.78736577017764
                  }
               ],
               "postalCode":"03801",
               "cc":"US",
               "city":"Portsmouth",
               "state":"NH",
               "country":"United States",
               "formattedAddress":[
                  "1465 Woodbury Ave",
                  "Portsmouth, NH 03801",
                  "United States"
               ]
            },
            "categories":[
               {
                  "id":"52f2ab2ebcbc57f1066b8b46",
                  "name":"Supermarket",
                  "pluralName":"Supermarkets",
                  "shortName":"Supermarket",
                  "icon":{
                     "prefix":"https://ss3.4sqi.net/img/categories_v2/shops/food_grocery_",
                     "suffix":".png"
                  },
                  "primary":true
               }
            ],
            "verified":false,
            "stats":{
               "checkinsCount":6231,
               "usersCount":999,
               "tipCount":13
            },
            "allowMenuUrlEdit":true,
            "beenHere":{
               "lastCheckinExpiredAt":0
            },
            "specials":{
               "count":0,
               "items":[

               ]
            },
            "hereNow":{
               "count":0,
               "summary":"Nobody here",
               "groups":[

               ]
            },
            "referralId":"v-1508774069",
            "venueChains":[

            ],
            "hasPerk":false
         },
         {
            "id":"4ad9f3bbf964a520441c21e3",
            "name":"Breaking New Grounds",
            "contact":{
               "phone":"6034369555",
               "formattedPhone":"(603) 436-9555",
               "twitter":"bngcoffee"
            },
            "location":{
               "address":"14 Market Sq",
               "crossStreet":"Pleasant St",
               "lat":43.07701892204772,
               "lng":-70.75736314058304,
               "labeledLatLngs":[
                  {
                     "label":"display",
                     "lat":43.07701892204772,
                     "lng":-70.75736314058304
                  }
               ],
               "postalCode":"03801",
               "cc":"US",
               "city":"Portsmouth",
               "state":"NH",
               "country":"United States",
               "formattedAddress":[
                  "14 Market Sq (Pleasant St)",
                  "Portsmouth, NH 03801",
                  "United States"
               ]
            },
            "categories":[
               {
                  "id":"4bf58dd8d48988d1e0931735",
                  "name":"Coffee Shop",
                  "pluralName":"Coffee Shops",
                  "shortName":"Coffee Shop",
                  "icon":{
                     "prefix":"https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                     "suffix":".png"
                  },
                  "primary":true
               }
            ],
            "verified":false,
            "stats":{
               "checkinsCount":10188,
               "usersCount":2974,
               "tipCount":77
            },
            "url":"http://bngcoffee.com",
            "allowMenuUrlEdit":true,
            "beenHere":{
               "lastCheckinExpiredAt":0
            },
            "specials":{
               "count":0,
               "items":[

               ]
            },
            "hereNow":{
               "count":1,
               "summary":"One other person is here",
               "groups":[
                  {
                     "type":"others",
                     "name":"Other people here",
                     "count":1,
                     "items":[

                     ]
                  }
               ]
            },
            "referralId":"v-1508774069",
            "venueChains":[

            ],
            "hasPerk":false
         }
      ],
      "confident":true,
      "geocode":{
         "what":"",
         "where":"03878",
         "feature":{
            "cc":"US",
            "name":"03878",
            "displayName":"03878, NH, United States",
            "matchedName":"03878, NH, United States",
            "highlightedName":"<b>03878</b>, NH, United States",
            "woeType":11,
            "id":"geonamezip:US-3878",
            "longId":"162411061562224954",
            "geometry":{
               "center":{
                  "lat":43.2525,
                  "lng":-70.8756
               },
               "bounds":{
                  "ne":{
                     "lat":43.287392,
                     "lng":-70.83813599999999
                  },
                  "sw":{
                     "lat":43.223431,
                     "lng":-70.927105
                  }
               }
            }
         },
         "parents":[

         ]
      }
   }
}
```
