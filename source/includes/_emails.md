# Emails

## List candidate emails

```shell
curl -X GET "https://wk.test/api/v1/external/emails" \
    -d "candidate_reference=wttj-d655345409a6097309156b05" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 12345,
    "subject": "Greetings",
    "body": "Email body",
    "from_email": "test@example.com",
    "to": "example@test.com",
    "created_at": "2018-01-03T16:17:07.501+01:00",
    "origin": "api",
    "candidate_reference": "wttj-d655345409a6097309156b05",
    "attachments": []
  },
  ...
]
```

<aside class="notice">
This endpoint requires <code>emails_r</code> or <code>emails_rw</code>, and <code>my_candidtates_rw</code>, <code>candidates_r</code> or <code>candidates_rw</code> scope.
</aside>

This endpoint lets you retrieve all mails for a given candidate reference.

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/emails`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`candidate_reference` | String | ✔ | | Candidate reference | wttj-d655345409a6097309156b05
`per_page` | Integer | | 100 | Number of jobs per page |
`page` | Integer | | 1 | Page offset |

## Create an email

```shell
curl -X POST "https://wk.test/api/v1/external/emails" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d @- <<EOF
{
  "candidate_reference": "wttj-d655345409a6097309156b05",
  "subject": "Greetings",
  "body": "Email body",
  "from_email": "test@example.com",
  "to": "example@test.com"
}
EOF
```

> The above command returns JSON structured like this:

```json
{
  "id": 12345,
  "subject": "Greetings",
  "body": "Email body",
  "from_email": "test@example.com",
  "to": "example@test.com",
  "created_at": "2018-01-03T16:17:07.501+01:00",
  "origin": "api",
  "candidate_reference": "wttj-d655345409a6097309156b05",
  "attachments": []
}
```

<aside class="notice">
This endpoint requires <code>emails_rw</code>, and <code>my_candidtates_rw</code> or <code>candidates_rw</code> scope.
</aside>

This endpoint lets you create a new email for a given `candidate_reference`.

### HTTP Request

`POST https://www.welcomekit.co/api/v1/external/emails`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`candidate_reference` | String | ✔ | | Candidate reference | wttj-d655345409a6097309156b05
`subject` | String | ✔ | | Email subject |
`body` | String | ✔ | | Email body |
`from_email` | String | ✔ | | Email sender |
`to` | String | ✔ | | Email receiver |
`send_email` | String |  | false | Send email or not through Welcome Kit | true/false
`remote_file_urls` | Array |  | | email attachments | ["http://example.com/pdf"]
