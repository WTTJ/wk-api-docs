# Professions

## List available professions

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/professions" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
    {
        "fullname_translations": {
            "fr": "Business  > Business Development",
            "es": "Negocios  > Desarrollo de negocio",
            "en": "Business  > Business Development",
        },
        "fullname": "Business  > Business Development",
        "reference": "business_development"
    },
    {
        "fullname_translations": {
            "fr": "Business  > Acheteur",
            "es": "Negocios  > Compras",
            "en": "Business  > Purchasing",
        },
        "fullname": "Business  > Purchasing",
        "reference": "purchasing"
    },
    {
        "fullname_translations": {
            "fr": "Business  > Commercial",
            "es": "Negocios  > Comercial",
            "en": "Business  > Sales",
        },
        "fullname": "Business  > Sales",
        "reference": "sales"
    },
    ...
]
```

<aside class="notice">
This endpoint just requires a valid token.
</aside>

In order to create a job, you will need a `profession_reference`. Professions are used to organized job offers on <a href="http://www.welcometothejungle.co/" target="_blank">Welcome to the Jungle</a>, careers websites and other potential job boards.

This endpoint lets you access to the list of all active professions.

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/professions`
