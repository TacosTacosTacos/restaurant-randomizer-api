## Restaurant Randomizer API

# Description
A website that is used to randomly pick a location to eat based on user preferences and set location.  I based it off of stuff I have seen similar simple crud learning apps that I have seen online.  I have a use for it because some of my coworkers can't always decided where they want to go to get food.



## Each repo must contain the link to both deployed sites
todo: FILL OUT


## List technologies used
Ruby, Ruby on Rails, Four Square API

## List unsolved problems which would be fixed in future iterations.
todo: FILL OUT


## Document your planning and tell a story about your development process and problem-solving strategy.
todo: FILL OUT


## Link to Entity Relationship Diagram (ERD).
https://ibb.co/fW94J6

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
    "id": 1,
    "email": "ava@bob.com"
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
    "token": "BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f"
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
  "users": [
    {
      "id": 2,
      "email": "bob@ava.com"
    },
    {
      "id": 1,
      "email": "ava@bob.com"
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
  "user": {
    "id": 2,
    "email": "bob@ava.com"
  }
}
```


### Preferences

| Verb   | URI Pattern    | Controller#Action           |
|--------|----------------|-----------------------------|
| GET    | `/preferences` | `preferences#getlocation`   |
| POST   | `/preferences` | `preferences#addlocation`   |
| PATCH  | `/preferences` | `preferences#changelocation`|


#### GET /preferences

Request:

```sh
curl --include --request GET http://localhost:4741/preferences/ \
  --header "Authorization: Token token=$TOKEN"
  --data
```

```sh
TODO: Fill OUT
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

TODO: Fill in
```


#### POST /preferences

Request:

```sh
curl http://localhost:4741/preferences\
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
TODO: Fill in
  }'
```

```sh
TODO: Fill in
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
TODO: Fill in
  }
}
```



#### PATCH /preferences

Request:

```sh
curl --include --request PATCH "http://localhost:4741/preferences/" \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
TODO: Fill in
    }
  }'
```

```sh
TODO: Fill in
```

Response:

```md
HTTP/1.1 204 No Content
```


### User Restaraunt Blacklist
| Verb   | URI Pattern                                      | Controller#Action             |
|--------|--------------------------------------------------|-------------------------------|
| POST   | `/user_restaraunt_blacklist/:restaraunt_type_id` | `restaraunt_blacklist#create` |
| GET    | `/user_restaraunt_blacklist`                     | `restaraunt_blacklist#get`    |
| DELETE | `/user_restaraunt_blacklist/:restaraunt_type_id` | `restaraunt_blacklist#destroy`|

#### POST /user_restaraunt_blacklist/:restaraunt_type_id

Request:

```sh
curl http://localhost:4741/user_restaraunt_blacklist/:restaraunt_type_id\
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
TODO: Fill in
  }'
```

```sh
TODO: Fill in
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
TODO: Fill in
  }
}
```


#### GET /user_restaraunt_blacklist

Request:

```sh
curl --include --request GET http://localhost:4741/user_restaraunt_blacklist/ \
  --header "Authorization: Token token=$TOKEN"
  --data
```

```sh
TODO: Fill OUT
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

TODO: Fill in
```


#### DELETE /user_restaraunt_blacklist/:restaraunt_type_id

Request:

```sh
curl http://localhost:4741/user_restaraunt_blacklist/:restaraunt_type_id \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
```

```sh
TODO: Fill in
```

Response:

```md
HTTP/1.1 204 No Content
```
