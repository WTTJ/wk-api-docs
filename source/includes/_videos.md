# Videos

## List videos

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/videos" \
    -d "organization_reference=Pg4eV6k" \
    -d "details=true" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
  {
    "source": "youtube",
    "external_reference": "1gPC5eOJy8I",
    "name": "The one who started Dribbble with 50 T-shirts",
    "description": "Dan Cederholm is the co-founder of Dribbble, an online community allowing people to showcase their graphic design, web design, illustrations and pictures. He looks back on his career, talking about how he started coding, the challenges he faced at Dribbble as a founder and as a front-end developer, how writing has been the key to his success and much more.",
    "subtitle": "",
    "image": {"url":  "https://cdn.welcometothejungle.co/uploads/article/image/6860/154883/dan-cederholm-dribbble.jpg",
              "small": {"url": "https://cdn.welcometothejungle.co/uploads/article/image/6860/154883/small_dan-cederholm-dribbble.jpg"},
              "thumb": {"url": "https://cdn.welcometothejungle.co/uploads/article/image/6860/154883/thumb_dan-cederholm-dribbble.jpg"}},
    "url": "https://www.youtube.com/watch?v=BMi_rlAnwIg",
    "created_at": "2018-01-15T16:51:20.788757+01:00",
    "updated_at": "2018-12-11T08:35:43.456385+01:00",
    "details": {"snippet":{"title":"The one who started Dribbble with 50 T-shirts","thumbnails":{"standard":{"width":640,"url":"https://i.ytimg.com/vi/BMi_rlAnwIg/sddefault.jpg","height":480},"medium":{"width":320,"url":"https://i.ytimg.com/vi/BMi_rlAnwIg/mqdefault.jpg","height":180},"maxres":{"width":1280,"url":"https://i.ytimg.com/vi/BMi_rlAnwIg/maxresdefault.jpg","height":720},"high":{"width":480,"url":"https://i.ytimg.com/vi/BMi_rlAnwIg/hqdefault.jpg","height":360},"default":{"width":120,"url":"https://i.ytimg.com/vi/BMi_rlAnwIg/default.jpg","height":90}},"tags":["Behind The Code","WTTJ","Welcome to the Jungle","Dribblle","Dan Cederholm"],"publishedAt":"2019-01-30T09:21:57.000Z","localized":{"title":"The one who started Dribbble with 50 T-shirts","description":"Dan Cederholm is the co-founder of Dribbble, an online community allowing people to showcase their graphic design, web design, illustrations and pictures. He looks back on his career, talking about how he started coding, the challenges he faced at Dribbble as a founder and as a front-end developer, how writing has been the key to his success and much more.\n\nhttps://www.welcometothejungle.co/collections/behind-the-code"},"liveBroadcastContent":"none","description":"Dan Cederholm is the co-founder of Dribbble, an online community allowing people to showcase their graphic design, web design, illustrations and pictures. He looks back on his career, talking about how he started coding, the challenges he faced at Dribbble as a founder and as a front-end developer, how writing has been the key to his success and much more.\n\nhttps://www.welcometothejungle.co/collections/behind-the-code","channelTitle":"Welcome to the Jungle Studio","channelId":"UCpJfUQ72fmt4qAbkDvz0iNQ","categoryId":"22"},"kind":"youtube#video","id":"BMi_rlAnwIg","etag":"\"XpPGQXPnxQJhLgs6enD_n8JR4Qk/KjD6f_v7k7xQj4hfzWS1QTXiFWQ\"","contentDetails":{"projection":"rectangular","licensedContent":false,"duration":"PT12M23S","dimension":"2d","definition":"sd","caption":"false"}},
    "reference": "BMi_rlAnwIg"
  },
  ...
]
```

<aside class="notice">
This endpoint requires <code>videos_r</code> scope.
</aside>

This endpoint lets you retrieve your list of videos. Videos are hosted on Youtube or Dailymotion (see <code>source</code> and <code>url</code> in the returned body).

The dimensions of each image type are as follows:

- "standard" image dimensions fit within 2000x3000 px
- "large" image dimensions fit within 1200x2000 px
- "medium" image dimensions fit within 850x850 px
- "small" image dimensions fit within 650x650 px
- "thumb" image dimensions fit within 200x200 px

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/videos`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organization_reference` | String | ✔ | | Reference of the associated organization/company | aEioU123
`details` | Boolean | | false | Return details about the video | true / false
`per_page` | Integer | | 100 | Number of videos per page |
`page` | Integer | | 1 | Page offset |
