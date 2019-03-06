# Languages

## Get languages

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/languages" \
    -H "Content-Type: application/json" \
    -H "Authorization: bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
    {
        "name": "English",
        "reference": "en"
    },
    {
        "name": "French",
        "reference": "fr"
    },
    {
        "name": "Spanish; Castilian",
        "reference": "es"
    }
]
```

<aside class="notice">
This endpoint just requires a valid token.
</aside>

In order to create a job, you will need a `langague`. This endpoint lets you access to the list of all active languages.

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/languages`
