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

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/images`
