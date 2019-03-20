# Tools

## List tools

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/tools" \
    -H "Authorization: Bearer WK_API_KEY"

curl -X GET -G "https://www.welcomekit.co/api/v1/external/tools" \
    -d "name=react"
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
    {
        "thumb_url": "https://welcomekit.co/img/aws.png",
        "tool_category": {
            "name": "Product Management",
            "reference": "pm",
            "id": 1
        },
        "alternative_names": "Aws Cloudfront, Cloudfront",
        "name": "Amazon Cloudfront",
        "id": 35
    },
    {
        "thumb_url": "https://welcomekit.co/img/js.png",
        "tool_category": {
            "name": "Front",
            "reference": "frontend",
            "id": 2
        },
        "alternative_names": "JS",
        "name": "Javascript",
        "id": 351
    }
  ...
]
```

<aside class="notice">
This endpoint requires <code>tools_r</code> scope.
</aside>

This endpoint lets you retrieve all tools.

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/tools`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`per_page` | Integer | | 100 | Number of jobs per page |
`page` | Integer | | 1 | Page offset |
`name` | String |  | false | Filter on name (search on name & alternative names)

