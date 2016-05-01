#!/bin/bash

curl --include --request PATCH http://localhost:3000/edit-rescue/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "ted",
      "new": "teds"
    }
  }'
