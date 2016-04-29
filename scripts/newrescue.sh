curl --include --request POST http://localhost:3000/rescues/ \
  --header "Content-Type: application/json" \
  --data '{
    "rescue": {
      "title": "Guide to refactoring and Sniffing Out Code Smells",
      "url": "https://sourcemaking.com/refactoring/smells",
      "tag": "cheatsheet, refactor, code smells, "
    }
  }'
