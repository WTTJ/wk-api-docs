# Emails

## List candidate emails

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/emails" \
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
This endpoint requires <code>emails_*</code>, and <code>candidates_*</code> or <code>my_candidates_*</code> scopes.
</aside>

This endpoint lets you retrieve all emails for a given candidate reference.

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
curl -X POST "https://www.welcomekit.co/api/v1/external/emails" \
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

For example, it may be useful if you send emails through an external service and you want to consolidate all the emails related to your candidates in WelcomeKit.

### HTTP Request

`POST https://www.welcomekit.co/api/v1/external/emails`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`candidate_reference` | String | ✔ | | Candidate reference | wttj-d655345409a6097309156b05
`subject` | String | ✔ | | Email subject | Hello World
`body` | String | ✔ | | Email body (plain text, markdown, html)  | Lipsum.
`from_email` | String | ✔ | | Email sender | whatever@wherever.com
`to` | String | ✔ | | Email receiver | whatever@wherever.com
`send_email` | String |  | false | Let Welcome Kit send the related email to the candidate? | true/false
`remote_file_urls` | Array |  | | Email attachments (PDF, JPG, etc.) | ["http://example.com/documents/whatever.pdf"]
