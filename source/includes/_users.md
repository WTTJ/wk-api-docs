# Users

## Get current user

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/users/current" \
    -H "Content-Type: application/json" \
    -H "Authorization: bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
{
  "avatar_url": "https://www.welcomekit.co/uploads/user/image/GXj/J/avatar.jpg",
  "display_name": "Foo Bar"
}

```

<aside class="notice">
This endpoint requires <code>me_r</code> scope.
</aside>

This endpoints lets you get:

* Information about the current user
* All organizations this user has access to
* All jobs related to these organizations
* All stages (aka columns) related to these jobs

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/users/current`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organizations` | Boolean | | | Include organizations |
`jobs` | Boolean | | | Include jobs |
`stages` | Boolean | | | Include jobs stages |
