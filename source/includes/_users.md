# Users

## Get current user

<aside class="notice">
This endpoint requires <code>me_r</code> scope.
</aside>

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/users/current" \
    -d "organizations=true&jobs=true" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
{
  "avatar_url": "https://www.welcomekit.co/uploads/user/image/GXj/J/avatar.jpg",
  "display_name": "Foo Bar"
}

```

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/users/current`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organizations` | Boolean | | | Include organizations |
`jobs` | Boolean | | | Include jobs |
