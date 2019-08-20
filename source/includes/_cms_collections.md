# CMS collections

## List CMS collections

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/cms/collections"
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
  {"id":1,"cms_collection_category":{"id":3,"title":"Vidéos"},"title":"Culture+","slug":"video-culture-plus-entreprises",
   "summary":"Dans les backstages des grandes entreprises, découvrez les valeurs, rituels et quotidien des équipes.",
   "description":"Avec la série de vidéos Culture+, découvrez la culture des start-ups et de grandes entreprises. En immersion avec les équipes dans les locaux des sociétés, les salariés dévoilent leur quotidien et les valeurs de leur tribu.\n",
   "cover":{"url":"https://cdn.welcometothejungle.co/uploads/collection/cover/2683/154883/collection_culture.png",
   "large":{"url":"https://cdn.welcometothejungle.co/uploads/collection/cover/2683/154883/large_collection_culture.png"},
   "thumb":{"url":"https://cdn.welcometothejungle.co/uploads/collection/cover/2683/154883/thumb_collection_culture.png"}},
   "seo_title":"Découvrez la culture d’entreprises des plus grandes sociétés.",
   "seo_description":"En immersion dans les locaux, découvrez avec Culture + les rituels et le quotidien des équipes dans les plus grandes boîtes !",
   "social_title":null,"social_description":null,"social_image":{"url":null,"large":{"url":null},"thumb":{"url":null}},"status":"published",
   "theme":"dark","reference":"f38a747739a4d8241bc2cb82","language":"fr","internal_name":"Culture+","languages":[],"mirrors":{},
   "created_at":"2019-01-30T08:18:03.263+01:00","updated_at":"2019-02-12T15:54:21.592+01:00","published_at":"2019-01-30T08:17:58.332+01:00","archived_at":null},

  {"id":2,"cms_collection_category":{"id":2,"title":"Guides candidats"},"title":"Rédiger son CV","slug":"le-cv",
   "summary":"30 secondes ? C'est le temps moyen que passe un recruteur sur un CV. Dans ce dossier on vous explique comment faire un bon CV pour vous démarquer.",
   "description":"Toute recherche d'emploi commence par l'élaboration d'un CV et pour faire bonne première impression et donner envie au recruteur de vous rencontrer, il est nécessaire d'avoir un CV de qualité. Dans ce dossier vous trouverez des conseils pour faire un bon CV et se démarquer des autres candidats. Quelque soit le niveau d'expérience et le secteur d'activité, le CV reste un élément essentiel pour faire connaissance avec le recruteur et amorcer l'entretien à venir. Il doit respecter certaines règles pour être autant agréable à lire qu'à regarder. Un CV c'est à la fois une présentation de soi, de son parcours mais c'est aussi une bonne manière de préparer le potentiel entretien à venir en donnant au recruteur les informations nécessaires pour qu'il puisse vous poser les bonnes questions. Qu'on soit étudiant avec peu ou pas d'expérience professionnelle ou déjà avec une carrière derrière soi, on vous a préparé des conseils très concrets pour faire un bon CV. Aujourd'hui, le CV n'est plus suffisant et nombre de recruteurs vont également sur Linkedin pour valider et mieux comprendre le parcours des candidats, il est donc indispensable de travailler son profil pour qu'il dise suffisamment de vous. Enfin, vous trouverez des conseils pour faire un bon CV dans le cas d'une candidtaure à l'étranger.",
   "cover":{"url":"https://cdn.welcometothejungle.co/uploads/collection/cover/2666/154883/collection_resume.jpg",
   "large":{"url":"https://cdn.welcometothejungle.co/uploads/collection/cover/2666/154883/large_collection_resume.jpg"},
   "thumb":{"url":"https://cdn.welcometothejungle.co/uploads/collection/cover/2666/154883/thumb_collection_resume.jpg"}},
   "seo_title":"Tous nos conseils pour créer un CV et faire bonne impression",
   "seo_description":"Le CV est la première rencontre qui a lieu avec un recruteur, il est important de la soigner. Créer un CV suppose de suivre certaines règles pour mettre toutes les chances de son côté de faire bonen impression.","social_title":null,"social_description":null,"social_image":{"url":null,"large":{"url":null},"thumb":{"url":null}},
   "status":"published","theme":"light","reference":"7c43d02dbc72940935cb3da9","language":"fr","internal_name":"Rédiger son CV","languages":[],
   "mirrors":{},"created_at":"2019-01-30T08:17:46.115+01:00","updated_at":"2019-01-30T08:17:46.115+01:00","published_at":"2019-01-30T08:17:45.521+01:00","archived_at":null},
  ...
]
```

<aside class="notice">
This endpoint requires <code>cms_collections_r</code> scope.
</aside>

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/cms/collections`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`per_page` | Integer | | 100 | Number of CMS collections per page |
`page` | Integer | | 1 | Page offset |
