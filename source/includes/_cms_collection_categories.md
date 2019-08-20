# CMS collection categories

## List CMS collection categories

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/cms/collection/categories"
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
  {"id":1, "title":"Behind the Code", "slug":"behind-the-code", "menu_title":"Behind the Code",
   "description":"We strongly believe that being a developer is not just about technical skills and tools but also about people.\r\n\r\nIt’s about those developers who are building the programming world by creating new languages, technologies or products. It’s about those developers who are not afraid to experiment with new techniques and to share their feedback and knowledge. It’s about those developers who take a step forward in the programming world.\r\n\r\nLet’s have a look from their perspective. Behind the code.\r\n",
   "seo_title":"Behind the Code","seo_description":"Behind the Code. We strongly believe that being a developer is not just about technical skills and tools but also about people.\r\nLet’s have a look from this perspective.\r\n",
   "social_title":null,"social_description":null,"social_image":{"url":null,"large":{"url":null},"thumb":{"url":null}},"status":"published",
   "cover":{"url":"https://cdn.welcometothejungle.co/uploads/category/cover/2660/154883/collection_category_behind_the_code.jpg",
   "large":{"url":"https://cdn.welcometothejungle.co/uploads/category/cover/2660/154883/large_collection_category_behind_the_code.jpg"},
   "thumb":{"url":"https://cdn.welcometothejungle.co/uploads/category/cover/2660/154883/thumb_collection_category_behind_the_code.jpg"}},
   "position":2,"reference":"73b874f0aad6d8fbdc017170","language":"fr","internal_name":"Behind the Code","languages":[],"mirrors":{},
   "cms_collections":[{"id":1,"title":"Coder stories"},{"id":2,"title":"Career hacking"},{"id":3,"title":"Offbeat"}],
   "created_at":"2019-01-30T08:17:40.090+01:00","updated_at":"2019-01-30T08:23:55.563+01:00","published_at":"2019-01-30T08:17:39.610+01:00","archived_at":null},

  {"id":2,"title":"Guides candidats","slug":"guides-candidats","menu_title":"Guides candidats",
   "description":"Que vous soyez étudiants ou actifs, découvrez ici tous les guides pour simplifier votre recherche d'emploi. Préparer un entretien, faire son CV,postuler à une offre ou découvrir un nouveau métier on a listé tous les conseils qui pourraient vous être utile dans votre recherche. Vous êtes prêts ?",
   "seo_title":"Tous les conseils pour réussir sa recherche d'emploi","seo_description":"Vous recherchez un stage ou un emploi ? Welcome to the Jungle a créé pour vous des guides pour réussir votre recherche d'emploi et trouver le job qui vous correspond.","social_title":"Tout ce qu'il fait savoir pour réussir sa recherche d'emploi",
   "social_description":"Découvrez nos guides candidats pour réussir votre recherche d'emploi ou de stage",
   "social_image":{"url":null,"large":{"url":null},"thumb":{"url":null}},"status":"published",
   "cover":{"url":"https://cdn.welcometothejungle.co/uploads/category/cover/2665/154883/collection_category_guides.jpg",
   "large":{"url":"https://cdn.welcometothejungle.co/uploads/category/cover/2665/154883/large_collection_category_guides.jpg"},
   "thumb":{"url":"https://cdn.welcometothejungle.co/uploads/category/cover/2665/154883/thumb_collection_category_guides.jpg"}},
   "position":0,"reference":"33d3f08c39dcafcbe137197d","language":"fr","internal_name":"Guides candidats","languages":[],"mirrors":{},
   "cms_collections":[{"id":4,"title":"Rédiger son CV"},,{"id":5,"title":"Préparer un entretien d'embauche"},{"id":6,"title":"Rechercher et postuler"},
   {"id":25,"title":"Guide des métiers de l'IA et de la cybersécurité"},{"id":28,"title":"Wall of fame"}],"created_at":"2019-01-30T08:17:45.042+01:00",
   "updated_at":"2019-01-30T08:17:45.042+01:00","published_at":"2019-01-30T08:17:44.669+01:00","archived_at":null},
  ...
]
```

<aside class="notice">
This endpoint requires <code>cms_collection_categories_r</code> scope.
</aside>

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/cms/collection/categories`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`per_page` | Integer | | 100 | Number of CMS collection categories per page |
`page` | Integer | | 1 | Page offset |
