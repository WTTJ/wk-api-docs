# Organizations

## List organizations

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/organizations" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d "name=welcome"
    -d "created_after=2015-10-30"
```

> The above command returns JSON structured like this:

```json
[
  {
    "reference":"2Ob7z5j",
    "name":"WelcomeTrack",
    "media_twitter":"welcometrack",
    "media_website_url":"https://www.welcometrack.com",
    "description":"...",
    "subsidiaries":[],
    "slug":"welcometrack",
    "logo_url":"https://cdn-images.wttj.tech/...",
    "sectors":["saas-cloud-services","e-commerce-1"],
    "default_language":"fr",
    "media_facebook":"welcometrack.france",
    "media_linkedin":"welcometrack",
    "media_linkedin":"welcometrack",
    "media_instagram":"",
    "media_youtube":"channel/UCYSdCNce6Sd_OKeD8r_xMrQ",
    "media_pinterest":"",
    "nb_employees":8,
    "average_age":33,
    "turnover":null,
    "creation_year":2012,
    "parity_men":65,
    "parity_women":35,
    "revenue":"",
    "i18n_covers":{"fr":"https://cdn-images.wttj.tech/..."},
    "i18n_descriptions":{"fr":"Depuis 2012, ..."},
    "i18n_looking_fors":{"fr":"WelcomeTrack recrute ..."},
    "i18n_good_to_knows":{"fr":"En mai 2019, ..."},
    "websites":[
      {
        "reference":"welcometrack",
        "name":"WelcomeTrack",
        "root_url":"https://welcometrack.welcomekit.tech",
        "cover_url":"https://cdn.welcometothejungle.co/uploads/website/cover/0910/146888/welcometrack.jpg"
      },
      {
        "reference":"wttj_fr",
        "name":"Welcome to the Jungle",
        "root_url":"https://wttj.co",
        "cover_url":null
      },
      {
        "reference":"thefamily",
        "name":"The Family",
        "root_url":"https://thefamily.welcomekit.tech",
        "cover_url":"https://cdn.welcometothejungle.co/uploads/website/cover/2254/157614/thefamily.jpg"
      }
    ],
    "updated_at":"2020-06-21T07:00:50.332+02:00"
  },
  {
    "reference":"d4j7pMZ",
    "name":"Welcome At Work",
    "media_twitter":"",
    "media_website_url":"http://welcomeatwork.com/",
    "description":"**Un petit mot sur nous :**...",
    "subsidiaries":[],
    "slug":"welcome-at-work",
    "logo_url":"https://cdn-images.wttj.tech/...",
    "sectors":["commercial-real-estate"],
    "default_language":"fr",
    "media_facebook":"",
    "media_linkedin":"atrois",
    "media_instagram":"welcomeatwork",
    "media_youtube":"","media_pinterest":"",
    "nb_employees":100,
    "average_age":28,
    "turnover":null,
    "creation_year":2016,
    "parity_men":null,
    "parity_women":null,
    "revenue":"",
    "i18n_covers":{"fr":"https://cdn-images.wttj.tech/..."},
    "i18n_descriptions":{"fr":"Welcome at Work !..."},
    "i18n_looking_fors":{"fr":"Tu as le..."},
    "i18n_good_to_knows":{"fr":"Chez WAW..."},
    "websites":[
      {
        "reference":"wttj_fr",
        "name":"Welcome to the Jungle",
        "root_url":"https://wttj.co",
        "cover_url":null
      }
    ],
    "updated_at":"2020-06-20T07:00:12.633+02:00"
  },
  {
    "reference":"Pg4eV6k",
    "name":"Welcome to the Jungle",
    "media_twitter":"wttj_fr",
    "media_website_url":"https://www.welcometothejungle.com/",
    "description":"Le monde du travail...",
    "subsidiaries":[
      {
        "name":"Evaneos",
        "slug":"evaneos",
        "reference":"rPRz439"
      }
    ],
    "slug":"wttj",
    "logo_url":"https://cdn-images.wttj.tech/...",
    "sectors":["media-1", "recruitment-1"],
    "default_language":"en",
    "media_facebook":"wttj.fr",
    "media_linkedin":"5233683",
    "media_instagram":"welcometothejungle_fr",
    "media_youtube":"user/welcomejobs",
    "media_pinterest":"",
    "nb_employees":160,
    "average_age":30,
    "turnover":5,
    "creation_year":2015,
    "parity_men":null,
    "parity_women":null,
    "revenue":"",
    "i18n_covers":{
        "cs":"https://cdn-images.wttj.tech/",
        "en":"https://cdn-images.wttj.tech/",
        "es":"https://cdn-images.wttj.tech/",
        "fr":"https://cdn-images.wttj.tech/",
        "sk":"https://cdn-images.wttj.tech/"
    },
    "i18n_descriptions":{
        "cs":"Welcome to the Jungle...",
        "en":"Is the job market a Jungle?...",
        "es":"...",
        "fr":"...",
        "sk":"..."
    },
    "i18n_looking_fors":{
        "cs":"...",
        "en":"...",
        "es":"...",
        "fr":"...",
        "sk":"..."
    },
    "i18n_good_to_knows":{
        "cs":"...",
        "en":"...",
        "es":"...",
        "fr":"...",
        "sk":"..."
    },
    "websites":[
      {
        "reference":"wttj_fr",
        "name":"Welcome to the Jungle",
        "root_url":"https://wttj.co",
        "cover_url":null
      },
      {
        "reference":"numa-jobboard",
        "name":"Numa-Jobboard",
        "root_url":"https://numa-jobboard.welcomekit.tech",
        "cover_url":"https://cdn.welcometothejungle.co/uploads/website/cover/1314/153667/numa-jobboard.jpg"
      },
      {
        "reference":"raise-co",
        "name":"Raise.co",
        "root_url":"https://raise-co.welcomekit.tech",
        "cover_url":"https://cdn.welcometothejungle.co/uploads/website/cover/3098/152784/raise-co.jpg"
       }
    ],
    "updated_at":"2020-06-21T07:00:20.407+02:00"
  }
]
```

<aside class="notice">
This endpoint requires <code>su_organizations_r</code> scope.
Availability of offices requires <code>su_offices_r</code> or <code>su_offices_rw</code> scope and setting the query parameter offices to true.
Availability of images requires <code>su_images_r</code> scope and setting the query parameter images to true.
Availability of videos requires <code>su_videos_r</code> scope and setting the query parameter videos to true.
</aside>

This endpoint lets you retrieve all organizations according to their name or website url or cms site reference (one and only one of these parameters is required).

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/organizations`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`name` | String | | | Returns organizations based on the name | welcome
`media_website_url` | String | | | Returns organizations base on the media website url | welcometothejungle
`cms_sites_references` | String | | | Returns organizations base on the sites references | wttj_fr,jungle
`offices` | Boolean | | false | Returns offices field | [{...}, {...}]
`images` | Boolean | | false | Returns images field | [{...}, {...}]
`videos` | Boolean | | false | Returns videos field | [{...}, {...}]
`per_page` | Integer | | 100 | Number of jobs per page |
`page` | Integer | | 1 | Page offset |
`created_after` | String | | | Returns jobs created after this date (YYYY-MM-DD) | 2015-11-26
`updated_after` | String | | | Returns jobs updated after this date (YYYY-MM-DD) | 2015-11-26



## Retrieve organizations

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/organizations/aEioU123" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d "offices=true"
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
