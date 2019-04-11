# Images

## List available images

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/images" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d "organization_reference=Pg4eV6k" \
```

> The above command returns JSON structured like this:

```json
[
  {
   "name": "WTTJ team",
   "description": "Welcome To The Jungle team",
   "file": {
             "url": "https://cdn.welcometothejungle.co/uploads/website_organization/cover_image/wttj_fr/fr-wttj.jpg",
             "large": {"url": "https://cdn.welcometothejungle.co/uploads/website_organization/cover_image/wttj_fr/large_fr-wttj.jpg"},
             "medium": {"url": "https://cdn.welcometothejungle.co/uploads/website_organization/cover_image/wttj_fr/medium_fr-wttj.jpg"},
             "small": {"url": "https://cdn.welcometothejungle.co/uploads/website_organization/cover_image/wttj_fr/small_fr-wttj.jpg"},
             "thumb": {"url": "https://cdn.welcometothejungle.co/uploads/website_organization/cover_image/wttj_fr/thumb_fr-wttj.jpg"}
           },
    "created_at": "2019-03-28T10:00:01.403+01:00",
    "updated_at": "2019-03-28T10:00:01.403+01:00"
  },
  ...
]
```

<aside class="notice">
This endpoint requires the images_r scope.
</aside>

This endpoint lets you access to the list of your images.

The dimensions of each image type are as follows:

- "standard" image dimensions fit within 2000x3000 px
- "large" image dimensions fit within 1200x2000 px
- "medium" image dimensions fit within 850x850 px
- "small" image dimensions fit within 650x650 px
- "thumb" image dimensions fit within 200x200 px

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/images`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organization_reference` | String | ✔ | | Organization reference | Pg4eV6k
`per_page` | Integer | | 100 | Number of images per page |
`page` | Integer | | 1 | Page offset |