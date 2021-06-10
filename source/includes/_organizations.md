# Organizations

## Retrieve an organization

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/organizations/aEioU123" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d "offices=true""
```

> The above command returns JSON structured like this:

```json
{
  "reference" : "aEioU123",
  "name" : "Welcome To The Jungle",
  "media_twitter" : "wttj_fr",
  "media_website_url" : "https://www.welcometothejungle.com/",
  "description" : "Welcome To The Jungle",
  "subsidiaries":[
    {
      "name" : "Welcome To The Jungle Czech Republic and Slovakia",
      "slug" : "wttj-cz","
      "reference" : "I-3801-A68"
    }
  ],
  "slug" : "welcome-to-the-jungle",
  "logo_url" : "https://cdn-images.wttj.test/GOHJaRNP0GybemayTPLz3CUIpW2kx7d4Ck4akgsFfMs/w:200/q:85/czM6Ly93dHRqLXB1/YmxpYy10ZXN0L3Vw/bG9hZHMvb3JnYW5p/emF0aW9uL2xvZ28v/MjE4Mi8xNjIxODYv/ZjRmODUxNDgtYjg1/Yy00M2M5LTg2MzQt/MmMzYzE1ZTE3MTNi/LnBuZw",
  "sectors":["public-key-didactic-pricing-structure", "multi-layered-content-based-website"],
  "default_language" : "fr",
  "media_facebook" : "wttj.fr",
  "media_linkedin" : "wttj-fr",
  "media_instagram" : "welcometothejungle_fr",
  "media_youtube" : "welcomejobs",
  "media_pinterest":null,
  "nb_employees":185,
  "average_age":31,
  "turnover":5,
  "creation_year":2015,
  "parity_men":38,
  "parity_women":62,
  "revenue" : "(confidential)",
  "cover_url" : "https://wk.test/uploads/website_organization/cover/2182/162186/welcome-to-the-jungle.jpg",
  "i18n_descriptions":{
      "en" : "Provident aspernatur ratione ipsum tempore. Quasi nisi ratione provident aut corporis non voluptatem. Recusandae voluptatem dolor laboriosam qui nulla inventore. Repellendus explicabo et voluptas accusamus aut sint quis.",
      "fr" : "Rerum recusandae repudiandae assumenda possimus esse eligendi. In non ut aliquam perferendis. Cupiditate non ex quos laborum ea ut omnis natus."
      },
  "i18n_looking_fors":{
      "en" : "Est dolorem inventore asperiores impedit reiciendis eos. Reprehenderit reiciendis ipsam vel sint aut quod inventore. Dolores minus sit est voluptates voluptatem amet ut possimus. Illo voluptatem rerum omnis dolores qui.",
      "fr" : "Distinctio incidunt quia dignissimos culpa velit cupiditate quibusdam nihil. Nisi reprehenderit mollitia quia incidunt. Minus quisquam impedit dolor sapiente voluptate temporibus."
      },
  "i18n_good_to_knows":{
      "fr" : "Vitae sit libero quis optio maiores et doloribus. Voluptas a nesciunt odio aut quo. Reiciendis et sint eum laboriosam labore omnis. Velit saepe autem reiciendis libero quia occaecati quia."
      },
  "websites" : [
    {
      "reference" : "wttj_fr",
      "name" :"Welcome To The Jungle",
      "root_url" : "https://www.welcometothejungle.com/en/companies/wttj"
    }
  ]
  "offices":[
    {"id":4,
     "name" : "WTTJ HQ",
     "address" : "15 rue Commines",
     "zip_code" : "75003",
     "city" : "Paris",
     "country_code" : "FR",
     "is_headquarter":true
    }
  ],
  "updated_at" : "2021-05-24T15:16:22.219+02:00"
} 
```

<aside class="notice">
This endpoint requires <code>su_organizations_r</code> scope. Availability of offices requires <code>su_offices_r</code> or <code>su_offices_rw</code> scope and setting the query parameter offices to true.
</aside>

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/organizations/:reference`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`reference` | String | ✔ | | Organization reference | aEioU123
`offices` | Boolean | | false | Returns offices field | [{...}, {...}]
