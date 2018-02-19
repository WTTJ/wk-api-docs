# Documents

## List candidate attached files

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/documents" \
    -d "candidate_reference=wttj-d655345409a6097309156b05" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 20,
    "job_reference": "WTTJ_KmqkD1Y",
    "candidate_reference": "wttj-d655345409a6097309156b05",
    "filename": "example",
    "file_url": "http://example.com/example.pdf",
    "size": 433994,
    "content_type": "application/pdf",
    "created_at": "2018-01-08T11:46:02.990+01:00"
  },
  ...
]
```

<aside class="notice">
This endpoint requires <code>documents_*</code>, and <code>candidates_*</code> or <code>my_candidates_*</code> scopes.
</aside>

This endpoint lets you retrieve all attached files for a given candidate reference.

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/documents`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`candidate_reference` | String | ✔ | | Candidate reference | wttj-d655345409a6097309156b05
`per_page` | Integer | | 100 | Number of jobs per page |
`page` | Integer | | 1 | Page offset |

## Attach files to a candidate

```shell
curl -X POST "https://www.welcomekit.co/api/v1/external/documents" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d @- <<EOF
{
  "candidate_reference": "wttj-d655345409a6097309156b05",
  "remote_file_urls": [
    {"filename": "resume", "file": "http://example.com/resume.pdf"},
    {"filename": "portfolio", "file": "http://example.com/portfolio.pdf"}
  ]
}
EOF
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 20,
    "job_reference": "WTTJ_KmqkD1Y",
    "candidate_reference": "wttj-d655345409a6097309156b05",
    "filename": "example",
    "file_url": "http://example.com/resume.pdf",
    "size": 433994,
    "content_type": "application/pdf",
    "created_at": "2018-01-08T11:46:02.990+01:00"
  },
  ...
]
```

<aside class="notice">
This endpoint requires <code>documents_rw</code>, and <code>my_candidtates_rw</code> or <code>candidates_rw</code> scope.
</aside>

This endpoint lets you attach new files for a given `candidate_reference`.

### HTTP Request

`POST https://www.welcomekit.co/api/v1/external/documents`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`candidate_reference` | String | ✔ | | Candidate reference | wttj-d655345409a6097309156b05
`remote_file_urls` | Array |  | | candidate files | ["http://example.com/pdf"]
