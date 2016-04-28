curl --include --request POST http://localhost:3000/rescues/ \
  --header "Content-Type: application/json" \
  --data '{
    "rescue": {
      "title": "smartass answer",
      "url": "www.google.com",
      "tag": "search, dumb, jerk"
    }
  }'
