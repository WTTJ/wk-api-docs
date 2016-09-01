# Offices

## Get offices for organization

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/offices" \
    -d "organization_reference=Pg4eV6k" \
    -H "Content-Type: application/json" \
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
    "is_active": true,
    "is_headquarter": true,
    "description": "Foo bar"
  }
]
```

<aside class="notice">
This endpoint requires <code>offices_r</code> or <code>offices_rw</code> scope.
</aside>

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/offices`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organization_reference` | String | ✔ | | Reference of the associated organization/company | aEioU123
`per_page` | Integer | | 100 | Number of jobs per page |
`page` | Integer | | 1 | Page offset |


## Get Candidate

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/offices/:id" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
{
  "id": 42,
  "name": "Paris",
  "address": "11 bis rue Bachaumont",
  "zip_code": "75002",
  "city": "Paris",
  "country_code": "FR",
  "is_active": true,
  "is_headquarter": true,
  "description": "Foo bar"
}
```

<aside class="notice">
This endpoint requires <code>offices_r</code> or <code>offices_rw</code> scope.
</aside>

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/offices/:id`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`id` | Integer | ✔ | | Office id | 42


## Create an office

```shell
curl -X POST "https://www.welcomekit.co/api/v1/external/offices" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d @- <<EOF
{
  "organization_reference": "Pg4eV6k",
  "name": "Paris",
  "address": "11 bis rue Bachaumont",
  "zip_code": "75002",
  "city": "Paris",
  "country_code": "FR",
  "is_active": true,
  "is_headquarter": true,
  "description": "Foo bar"
}
EOF
```

> The above command returns JSON structured like this:

```json
{
  "id": 42,
  "name": "Paris",
  "address": "11 bis rue Bachaumont",
  "zip_code": "75002",
  "city": "Paris",
  "country_code": "FR",
  "is_active": true,
  "is_headquarter": true,
  "description": "Foo bar"
}
```

<aside class="notice">
This endpoint requires <code>offices_rw</code> scope.
</aside>

This endpoint lets you create new offices for a given `organization_reference`.

### HTTP Request

`POST https://www.welcomekit.co/api/v1/external/offices`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organization_reference` | String | ✔ | | Organization reference | Pg4eV6k
`name` | String | ✔ | | Name |
`address` | String | ✔ | | Address |
`zip_code` | String | ✔ | | Zip code |
`city` | String | ✔ | | City |
`country_code` | String | ✔ | | Country code | US, FR
`is_active` | Boolean | | | Office active? | true / false
`is_headquarter` | Boolean | | | Office is organization headquarter? | true / false
`description` | Text | | | Description |