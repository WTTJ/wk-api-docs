# Comments

## Create a comment

```shell
curl -X POST "https://www.welcomekit.co/api/v1/external/comments" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d @- <<EOF
{
  "candidate_reference": "wttj-d655345409a6097309156b05",
  "content": "Foo"
}
EOF
```

> The above command returns JSON structured like this:

```json
{
  "id":83316,
  "content":"<p>Foo</p>\n",
  "raw_content":"Foo"
}

```

<aside class="notice">
This endpoint requires <code>comments_w</code>, and <code>candidates_*</code> or <code>my_candidates_*</code> scopes.
</aside>

This endpoint lets you create new comments for a given `candidate_reference`.

### HTTP Request

`POST https://www.welcomekit.co/api/v1/external/comments`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`candidate_reference` | String | ✔ | | Candidate reference | wttj-d655345409a6097309156b05
`content` | String | ✔ | | Comment content (plain text, html or markdown) | Lipsum.
