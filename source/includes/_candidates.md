# Candidates

## List candidates

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/candidates" \
    -d "job_reference=WTTJ_KmqkD1Y" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
  {
    "reference": "wttj-d655345409a6097309156b05",
    "cover_letter": "",
    "created_at": "2016-08-23T12:55:27.206+02:00",
    "job_id": 3027,
    "job_reference": "WTTJ_KmqkD1Y",
    "modal_path": "/dashboard/o/Pg4eV6k/jobs/WTTJ_KmqkD1Y/card/wttj-d655345409a6097309156b05",
    "portfolio_size": null,
    "portfolio_url": null,
    "resume_content_type": null,
    "resume_size": null,
    "resume_url": null,
    "stage_id": 14600,
    "updated_at": "2016-08-23T12:55:27.206+02:00",
    "profile": {
      "address": null,
      "avatar_url": "http://wk.dev/assets/default-avatar-7cbb7b9749a7cf8864001cde13e2a9a94e612bf083430d66ede0966f5bafb296.png",
      "city": null,
      "civility": "Mr",
      "country_code": null,
      "country_name": null,
      "email": "test@example.com",
      "firstname": "Foo",
      "lastname": "Bar",
      "phone": null,
      "subtitle": null,
      "zip_code": null
    },
    "origin": "external"
  },
  ...
]
```

<aside class="notice">
This endpoint requires <code>candidates_r</code> or <code>candidates_rw</code> scope.
</aside>

This endpoint lets you retrieve all candidates for a given job reference.

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/candidates`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`job_reference` | String | ✔ | | Job reference | WTTJ_dggjZDa
`per_page` | Integer | | 100 | Number of jobs per page |
`page` | Integer | | 1 | Page offset |


## Retrieve a candidate

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/candidates/:reference" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
{
  "reference": "wttj-d655345409a6097309156b05",
  "cover_letter": "",
  "created_at": "2016-08-23T12:55:27.206+02:00",
  "job_id": 3027,
  "job_reference": "WTTJ_KmqkD1Y",
  "modal_path": "/dashboard/o/Pg4eV6k/jobs/WTTJ_KmqkD1Y/card/wttj-d655345409a6097309156b05",
  "portfolio_size": null,
  "portfolio_url": null,
  "resume_content_type": null,
  "resume_size": null,
  "resume_url": null,
  "stage_id": 14600,
  "updated_at": "2016-08-23T12:55:27.206+02:00",
  "profile": {
    "address": null,
    "avatar_url": "http://wk.dev/assets/default-avatar-7cbb7b9749a7cf8864001cde13e2a9a94e612bf083430d66ede0966f5bafb296.png",
    "city": null,
    "civility": "Mr",
    "country_code": null,
    "country_name": null,
    "email": "test@example.com",
    "firstname": "Foo",
    "lastname": "Bar",
    "phone": null,
    "subtitle": null,
    "zip_code": null
  },
  "origin": "external"
}
```

<aside class="notice">
This endpoint requires <code>candidates_r</code> or <code>candidates_rw</code> scope.
</aside>

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/candidates/:reference`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`reference` | String | ✔ | | Candidate reference | wttj-d655345409a6097309156b05


## Create a candidate

```shell
curl -X POST "https://www.welcomekit.co/api/v1/external/candidates" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d @- <<EOF
{
  "email": "test@example.com",
  "firstname": "Foo",
  "lastname": "Bar",
  "civility": "Mr",
  "organization_reference": "Pg4eV6k",
  "job_reference": "WTTJ_KmqkD1Y",
  "job_stage_id": 42
}
EOF
```

> The above command returns JSON structured like this:

```json
{
  "reference": "wttj-d655345409a6097309156b05",
  "cover_letter": "",
  "created_at": "2016-08-23T12:55:27.206+02:00",
  "job_id": 3027,
  "job_reference": "WTTJ_KmqkD1Y",
  "modal_path": "/dashboard/o/Pg4eV6k/jobs/WTTJ_KmqkD1Y/card/wttj-d655345409a6097309156b05",
  "portfolio_size": null,
  "portfolio_url": null,
  "resume_content_type": null,
  "resume_size": null,
  "resume_url": null,
  "stage_id": 14600,
  "updated_at": "2016-08-23T12:55:27.206+02:00",
  "profile": {
    "address": null,
    "avatar_url": "http://wk.dev/assets/default-avatar-7cbb7b9749a7cf8864001cde13e2a9a94e612bf083430d66ede0966f5bafb296.png",
    "city": null,
    "civility": "Mr",
    "country_code": null,
    "country_name": null,
    "email": "test@example.com",
    "firstname": "Foo",
    "lastname": "Bar",
    "phone": null,
    "subtitle": null,
    "zip_code": null
  },
  "origin": "external"
}
```

<aside class="notice">
This endpoint requires <code>candidates_rw</code> scope.
</aside>

This endpoint lets you create new candidates for a given `job_reference`.

For example, you could create a Chrome Extension which makes it easy for recruiters to create new candidates... :)

### HTTP Request

`POST https://www.welcomekit.co/api/v1/external/candidates`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organization_reference` | String | ✔ | | Organization reference | Pg4eV6k
`job_reference` | String | ✔ | | Job reference | WTTJ_KmqkD1Y
`job_stage_id` | Integer | ✔ | | Job stage id | 42
`email` | String | ✔ | | Email | test@example.com
`firstname` | String | ✔ | | First name | John
`lastname` | String | ✔ | | Last name | Doe
`civility` | String | ✔ | | Civility | Mr, Ms
`tag_list` | String | | | Comma separated list of tags | foo,bar
`subtitle` | String | | | Subtitle | CTO @ WTTJ
`phone` | String | | | Phone number | 0606060606
`remote_image_url` | String | | | Avatar url | http://example.com/avatar.png
`comment` | Text | | | A comment about this candidate | Lorem ipsum…
`media_website` | String | | | Candidate website url  | https://me.com
`media_github` | String | | | Profile url on Github | https://github.com/me
`media_stackoverflow` | String | | | Profile url on Stackoverflow  | https://stackoverflow.com/users/me
`media_dribbble` | String | | | Profile url on Dribbble | https://dribbble.com/me
`media_behance` | String | | | Profile url on Behance | https://www.behance.net/me
`media_linkedin` | String | | | Profile url on Linkedin | https://fr.linkedin.com/pub/me
`media_facebook` | String | | | Profile url on Facebook | https://facebook.com/me
`media_instagram` | String | | | Profile url on Instagram | https://www.instagram.com/me
`media_medium` | String | | | Profile url on Medium | https://medium.com/@me
`media_tumblr` | String | | | Profile url on Tumblr | https://me.tumblr.com
`media_vimeo` | String | | | Profile url on Vimeo | https://vimeo.com/me
`media_twitter` | String | | | Profile url on Twitter | https://twitter.com/me


