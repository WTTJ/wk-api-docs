# coding: utf-8
# Videos

## List videos

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/videos" \
    -d "organization_reference=Pg4eV6k" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 42,
    "name": "Paris",
    "address": "11 bis rue Bachaumont",
    "zip_code": "75002",
    "city": "Paris",
    "country_code": "FR",
    "is_headquarter": true,
    "description": "Foo bar"
  }
]
```

<aside class="notice">
This endpoint requires <code>videos_r</code> scope.
</aside>

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/videos`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organization_reference` | String | ✔ | | Reference of the associated organization/company | aEioU123
`per_page` | Integer | | 100 | Number of videos per page |
`page` | Integer | | 1 | Page offset |
