# Requests

## Send a request

```shell
curl -X POST "https://www.welcomekit.co/api/v1/external/requests" \
    -H "Content-Type: application/json" \
    -H "Authorization: bearer wk-api-key" \
    -d @- <<EOF
{
  "subject": "Support request",
  "email": "test@example.com",
  "firstname": "Foo",
  "lastname": "Bar",
  "comment": "Lorem ipsum…"
}
EOF
```

> The above command returns JSON structured like this:

```json
{
    "comment": "Lorem ipsum…",
    "subject": "Support request"
}
```

### HTTP Request

`POST https://www.welcomekit.co/api/v1/external/requests`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`subject` | String | ✔ | | Subject of your request |
`email` | String | | | Email | test@example.com
`firstname` | String | | | First name |
`lastname` | String | | | Last name |
`comment` | Text | | | A comment explaining your request | Lorem ipsum…
