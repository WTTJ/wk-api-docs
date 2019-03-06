# Sectors

## List available sectors

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/sectors" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
    {
        "fullname": {
            "es": "Tecnología > Big data",
            "en": "Tech > Big data",
            "fr": "Tech > Big data"
        },
        "parent": {
            "es": "Tecnología",
            "en": "Tech",
            "fr": "Tech"
        },
        "names": {
            "es": "Big data",
            "en": "Big data",
            "fr": "Big data"
        },
        "reference": "big_data"
    },
    {
        "fullname": {
            "es": "Tecnología > Software",
            "en": "Tech > Software",
            "fr": "Tech > Logiciels"
        },
        "parent": {
            "es": "Tecnología",
            "en": "Tech",
            "fr": "Tech"
        },
        "names": {
            "es": "Software",
            "en": "Software",
            "fr": "Logiciels"
        },
        "reference": "software"
    }
    ...
]
```

<aside class="notice">
This endpoint just requires a valid token.
</aside>

This endpoint lets you access to the list of all active sectors.

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/sectors`
