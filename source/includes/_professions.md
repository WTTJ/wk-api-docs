# Professions

## Get all professions

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/professions" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
    {
        "fullname": "Business > Audit / Finance",
        "reference": "finance"
    },
    {
        "fullname": "Business > Conseil",
        "reference": "consulting"
    },
    {
        "fullname": "Business > Marketing",
        "reference": "marketing"
    },
    {
        "fullname": "Business > Opérations",
        "reference": "operations"
    },
    {
        "fullname": "Business > Logistique / Achats",
        "reference": "logistics"
    },
    {
        "fullname": "Business > Relation client / Support",
        "reference": "support"
    },
    {
        "fullname": "Tech > Développement Backend",
        "reference": "dev_backend"
    },
    {
        "fullname": "Tech > Développement Frontend",
        "reference": "dev_frontend"
    },
    ...
]
```

<aside class="notice">
This endpoint just requires a valid token.
</aside>

In order to create a job, you will need a `profession_reference`. Professions are used to organized job offers on <a href="http://www.welcometothejungle.co/" target="_blank">Welcome to the Jungle<a>, <a href="http://www.showmustgoon.co/" target="_blank">Show must go on</a>, careers websites and other potential job boards.

This endpoint lets you access to the list of all active professions.

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/professions`
