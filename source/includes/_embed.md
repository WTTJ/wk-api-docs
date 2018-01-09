# Embed

## Get informations to build an embed

```shell
curl -X GET "https://www.welcomekit.co/api/v1/embed" \
    -d "organization_reference=Pg4eV6k"
```

> The above command returns JSON structured like this:

```json
{
  "name": "Jukebox",
  "jobs": [
    {
      "id": 42,
      "reference": "WTTJ_NQbwwpV",
      "name": "CDI - Full Stack Developper",
      "slug": "full-stack-developper_paris",
      "description": "<p>Hello World…</p>",
      "profile": "<p>Hello World…</p>",
      "recruitment_process": "<p>Hello World…</p>",
      "salary": {
        "salary_min": "30000",
        "salary_max": "40000",
        "salary_currency": "EUR",
        "salary_period": "yearly"
      },
      "created_at": {
        "fr": "Le 09 Novembre 2015 à 13h26",
        "en": "09 November 2015 at 13h26"
      },
      "start_date": {
        "fr": "01 Décembre 2015",
        "en": "01 December 2015"
      },
      "office": {
        "id": 42,
        "city": "Paris",
        "country": {
          "fr": "France",
          "en": "France"
        }
      },
      "department": {
        "id": 42,
        "name": "Tech"
      },
      "contract_type": {
        "fr": "CDI",
        "en": "Full-Time"
      },
      "cms_sites_references": [
        "wttj_fr"
      ]
    }
  ],
  "sites": [
    {
      "reference": "wk-careers_wttj",
      "kind": "single",
      "url": "http://welcometothejungle.co"
    }
  ]
}
```

<aside class="notice">
This endpoint doesn't require authentication.
</aside>

### HTTP Request

`GET https://www.welcomekit.co/api/v1/embed`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organization_reference` | String | ✔ | | Organization reference | Pg4eV6k
