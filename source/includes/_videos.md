# Videos

## List videos

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/videos" \
    -d "organization_reference=Pg4eV6k" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 328,
    "source": "youtube",
    "external_reference": "1gPC5eOJy8I",
    "name": "Rencontrez Bertrand, Co-Founder",
    "description": "Issu de l’univers de la musique, Bertrand s’est progressivement tourné vers la production audiovisuelle afin de s’investir pleinement dans de nombreux projets créatifs. En 2015 il lance Welcome to the Jungle avec Jérémy, et c’est tout naturellement qu’il s’occupe depuis le début de la direction créative du média et de ses contenus.",
    "subtitle": "Co-Founder",
    "image": {"url":  "https://cdn.welcometothejungle.co/uploads/video/image/1480/151603/wttj_video_0679859b-6e84-4549-bbc4-1330eddcac57.jpg",
              "small": {"url": "https://cdn.welcometothejungle.co/uploads/video/image/1480/151603/small_wttj_video_0679859b-6e84-4549-bbc4-1330eddcac57.jpg"},
              "thumb": {"url": "https://cdn.welcometothejungle.co/uploads/video/image/1480/151603/thumb_wttj_video_0679859b-6e84-4549-bbc4-1330eddcac57.jpg"}},
    "created_at": "2018-01-15T15:51:20.788757Z",
    "updated_at": "2018-12-11T07:35:43.456385Z",
    "details": {"snippet":{"title":"Découvrez Welcome to the Jungle avec Bertrand, Co Founder","thumbnails":{"standard":{"width":640,"url":"https://i.ytimg.com/vi/1gPC5eOJy8I/sddefault.jpg","height":480},"medium":{"width":320,"url":"https://i.ytimg.com/vi/1gPC5eOJy8I/mqdefault.jpg","height":180},"high":{"width":480,"url":"https://i.ytimg.com/vi/1gPC5eOJy8I/hqdefault.jpg","height":360},"default":{"width":120,"url":"https://i.ytimg.com/vi/1gPC5eOJy8I/default.jpg","height":90}},"tags":["WTTJ","Welcome to the Jungle","Recrutement","Emploi"],"publishedAt":"2018-01-16T08:54:19.000Z","localized":{"title":"Découvrez Welcome to the Jungle avec Bertrand, Co Founder","description":"Welcome to the Jungle recrute !\nRetrouvez toutes leurs offres sur Welcome to the Jungle : https://www.welcometothejungle.co/companies/wttj"},"liveBroadcastContent":"none","description":"Welcome to the Jungle recrute !\nRetrouvez toutes leurs offres sur Welcome to the Jungle : https://www.welcometothejungle.co/companies/wttj","defaultAudioLanguage":"fr","channelTitle":"Welcome to the Jungle","channelId":"UCEO2-sJLw0H4_xdX1yVbCNg","categoryId":"22"},"kind":"youtube#video","id":"1gPC5eOJy8I","etag":"\"XI7nbFXulYBIpL0ayR_gDh3eu1k/Em-kOOTlYyb8wnVjYe_SL9w7eHE\"","contentDetails":{"projection":"rectangular","licensedContent":false,"duration":"PT1M28S","dimension":"2d","definition":"hd","caption":"false"}},
    "reference": "1gPC5eOJy8I"
  },
  ...
]
```

<aside class="notice">
This endpoint requires <code>videos_r</code> scope.
</aside>

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/videos`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organization_reference` | String | ✔ | | Reference of the associated organization/company | aEioU123
`per_page` | Integer | | 100 | Number of videos per page |
`page` | Integer | | 1 | Page offset |
