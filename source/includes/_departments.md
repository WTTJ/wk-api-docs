# Departments

## List departments

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/departments" \
    -d "organization_reference=Pg4eV6k" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 42,
    "name": "Tech",
    "is_active": true,
    "slug": "tech",
    "description": "Foo bar"
  }
]
```

<aside class="notice">
This endpoint requires <code>departments_r</code> or <code>departments_rw</code> scope.
</aside>

This endpoint lets you retrieve all departments (aka teams) for a given organization.

Departments are used on careers websites to organize job offers.

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/departments`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organization_reference` | String | ✔ | | Reference of the associated organization/company | aEioU123
`per_page` | Integer | | 100 | Number of jobs per page |
`page` | Integer | | 1 | Page offset |


## Retrieve a department

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/departments/:id" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
{
  "id": 42,
  "name": "Tech",
  "is_active": true,
  "slug": "tech",
  "description": "Foo bar"
}
```

<aside class="notice">
This endpoint requires <code>departments_r</code> or <code>departments_rw</code> scope.
</aside>

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/departments/:id`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`id` | Integer | ✔ | | Department id | 42


## Create a department

```shell
curl -X POST "https://www.welcomekit.co/api/v1/external/departments" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d @- <<EOF
{
  "organization_reference": "Pg4eV6k",
  "name": "Tech",
  "is_active": true,
  "description": "Foo bar"
}
EOF
```

> The above command returns JSON structured like this:

```json
{
  "id": 42,
  "name": "Tech",
  "is_active": true,
  "slug": "tech",
  "description": "Foo bar"
}
```

<aside class="notice">
This endpoint requires <code>departments_rw</code> scope.
</aside>

This endpoint lets you create new departments for a given `organization_reference`.

### HTTP Request

`POST https://www.welcomekit.co/api/v1/external/departments`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organization_reference` | String | ✔ | | Organization reference | Pg4eV6k
`name` | String | ✔ | | Name |
`slug` | String | | | Slug (used on careers websites) |
`is_active` | Boolean | | | Department active? | true / false
`description` | Text | | | Description |

NB: the slug is automatically generated from the department's name.

## Update a department

```shell
curl -X PUT "https://www.welcomekit.co/api/v1/external/departments/:id" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d @- <<EOF
{
  "name": "Whatever",
}
EOF
```

> The above command returns JSON structured like this:

```json
{
  "id": 42,
  "name": "Whatever",
  "is_active": true,
  "slug": "tech",
  "description": "Foo bar"
}
```

<aside class="notice">
This endpoint requires <code>departments_rw</code> scope.
</aside>

This endpoint lets you update departments for a given `id`.

### HTTP Request

`PUT https://www.welcomekit.co/api/v1/external/departments/:id`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`id` | String | ✔ | | Department ID |
`name` | String | | | Name |
`slug` | String | | | Slug |
`is_active` | Boolean | | | Department active? | true / false
`description` | Text | | | Description |

