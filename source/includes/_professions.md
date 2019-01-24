# Professions

## List available professions

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/professions" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
    {
        "reference": "customer_success",
        "fullname": "Relation client > Customer Success"
    },
    {
        "reference": "legal",
        "fullname": "Support > Juridique"
    },
    {
        "reference": "dev_backend",
        "fullname": "Tech > Dev Backend"
    },
    {
        "reference": "dev_frontend",
        "fullname": "Tech > Dev Frontend"
    },
    {
        "reference": "dev_mobile",
        "fullname": "Tech > Dev Mobile"
    },
    {
        "reference": "dev_fullstack",
        "fullname": "Tech > Dev Fullstack"
    },
    {
        "reference": "devops",
        "fullname": "Tech > DevOps / Infra"
    },
    {
        "reference": "data_science",
        "fullname": "Tech > Data Science"
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
