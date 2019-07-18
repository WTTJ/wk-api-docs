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
`name` | String |  | | Filter on name (search on name & alternative names) | react

## List tools for an organization

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/tools" \
    -d "organization_reference=Pg4eV6k" \
    -H "Authorization: Bearer WK_API_KEY"

curl -X GET -G "https://www.welcomekit.co/api/v1/external/tools" \
    -d "organization_reference=Pg4eV6k" \
    -d "name=react" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 373,
    "name": "StatusPage.io",
    "alternative_names": null,
    "thumb_url": "https://welcomekit.co/img/statuspage-io.png",
    "tool_category": {
      "id": 9,
      "name": "Monitoring",
      "reference": "monitoring"
    },
    "percent": 50.0,
    "comment": null
  },
  {
    "id": 176,
    "name": "Google BigQuery",
    "alternative_names": "",
    "thumb_url": "https://welcomekit.co/img/google-bigquery.png",
    "tool_category": {
      "id": 4,
      "name": "Data",
      "reference": "data"
    },
    "percent": 50.0,
    "comment": null
  },
  {
    "id": 314,
    "name": "Emacs",
    "alternative_names": null,
    "thumb_url": "https://welcomekit.co/img/emacs.png",
    "tool_category": {
      "id": 8,
      "name": "IDE",
      "reference": "ide"
    },
    "percent": 70.0,
    "comment": null
  },
  {
    "id": 311,
    "name": "Atom",
    "alternative_names": null,
    "thumb_url": "https://welcomekit.co/img/atom.png",
    "tool_category": {
      "id": 8,
      "name": "IDE",
      "reference": "ide"
    },
    "percent": 30.0,
    "comment": null
  },
  {
    "id": 245,
    "name": "Trello",
    "alternative_names": null,
    "thumb_url": "https://welcomekit.co/img/trello.png",
    "tool_category": {
      "id": 7,
      "name": "Project Management",
      "reference": "pm"
    },
    "percent": 100.0,
    "comment": null
  }
]
```

<aside class="notice">
This endpoint requires both <code>tools_r</code> and at least <code>organizations_rw</code> scope.
</aside>

This endpoint lets you retrieve all tools for a specified organization.

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/tools`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organization_reference` | String | ✔ | | Reference of the associated organization | aEioU123
`per_page` | Integer | | 100 | Number of jobs per page |
`page` | Integer | | 1 | Page offset |
`name` | String |  | | Filter on name (search on name & alternative names) | react
