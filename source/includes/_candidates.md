# Candidates

## List candidates

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/candidates" \
    -d "job_reference=WTTJ_KmqkD1Y" \
    -d "stage=true" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
  {
    "reference": "wttj-d655345409a6097309156b05",
    "cover_letter": "",
    "created_at": "2016-08-23T12:55:27.206+02:00",
    "job_reference": "WTTJ_KmqkD1Y",
    "modal_path": "/dashboard/o/Pg4eV6k/jobs/WTTJ_KmqkD1Y/card/wttj-d655345409a6097309156b05",
    "portfolio_size": 4242,
    "portfolio_url": "http://cdn.com/porfolio.pdf",
    "resume_content_type": "application/pdf",
    "resume_size": 4242,
    "resume_url": "http://cdn.com/resume.pdf",
    "stage_id": 14600,
    "stage":{
      "id": 14600,
      "name":"Refusé",
      "reference":"refused",
      "visible":true
    },
    "updated_at": "2016-08-23T12:55:27.206+02:00",
    "profile": {
      "address": null,
      "avatar_url": "http://wk.dev/assets/default-avatar-7cbb7b9749a7cf8864001cde13e2a9a94e612bf083430d66ede0966f5bafb296.png",
      "city": null,
      "country_code": null,
      "country_name": null,
      "email": "test@example.com",
      "firstname": "Foo",
      "lastname": "Bar",
      "phone": null,
      "subtitle": null,
      "zip_code": null
    },
    "origin": "external",
    "archived": false
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
`email` | String |  | | | example@example.co
`origin` | String |  | | Filter by origin | website:cms:wttj_fr
`referrer` | String |  | | Filter by referrer | www.linkedin.com
`job_stage_id` | String |  | | Filter by job stage id | 123
`job_stage_reference` | String |  | | Filter by job stage reference | refused
`archived` | String |  | both | Only returns archived candidates or not | true/false
`created_after` | String | | | Only returns candidates created after this date (YYYY-MM-DD) | 2015-11-26
`updated_after` | String | | | Only returns candidates updated after this date (YYYY-MM-DD) | 2015-11-26
`per_page` | Integer | | 100 | Number of jobs per page |
`page` | Integer | | 1 | Page offset |
`stage` | Boolean |  | false | Returns related job stage (ie. refused, hired, etc.) | true/false
`tags` | Boolean |  | false | Returns related tags | true/false


## Retrieve a candidate

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/candidates/:reference" \
    -d "stage=true" \
    -d "tags=true" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
{
  "reference": "wttj-d655345409a6097309156b05",
  "cover_letter": "",
  "created_at": "2016-08-23T12:55:27.206+02:00",
  "job_reference": "WTTJ_KmqkD1Y",
  "modal_path": "/dashboard/o/Pg4eV6k/jobs/WTTJ_KmqkD1Y/card/wttj-d655345409a6097309156b05",
  "portfolio_size": 4242,
  "portfolio_url": "http://cdn.com/porfolio.pdf",
  "resume_content_type": "application/pdf",
  "resume_size": 4242,
  "resume_url": "http://cdn.com/resume.pdf",
  "stage_id": 14600,
  "stage":{
    "id": 14600,
    "name":"Refusé",
    "reference":"refused",
    "visible":true
  },
  "updated_at": "2016-08-23T12:55:27.206+02:00",
  "profile": {
    "address": null,
    "avatar_url": "http://wk.dev/assets/default-avatar-7cbb7b9749a7cf8864001cde13e2a9a94e612bf083430d66ede0966f5bafb296.png",
    "city": null,
    "country_code": null,
    "country_name": null,
    "email": "test@example.com",
    "firstname": "Foo",
    "lastname": "Bar",
    "phone": null,
    "subtitle": null,
    "zip_code": null
  },
  "tags": ["ruby","react","go","elixir","react native"],
  "origin": "external",
  "archived": false
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
`stage` | Boolean |  | false | Returns related job stage (ie. refused, hired, etc.) | true/false
`tags` | Boolean |  | false | Returns related tags | true/false


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
  "organization_reference": "Pg4eV6k",
  "job_reference": "WTTJ_KmqkD1Y",
  "remote_resume_url": "http://example.com/resume.pdf",
  "remote_portfolio_url": "http://example.com/portfolio.pdf"
}
EOF
```

> The above command returns JSON structured like this:

```json
{
  "reference": "wttj-d655345409a6097309156b05",
  "cover_letter": "",
  "created_at": "2016-08-23T12:55:27.206+02:00",
  "job_reference": "WTTJ_KmqkD1Y",
  "modal_path": "/dashboard/o/Pg4eV6k/jobs/WTTJ_KmqkD1Y/card/wttj-d655345409a6097309156b05",
  "portfolio_size": 4242,
  "portfolio_url": "http://cdn.com/porfolio.pdf",
  "resume_content_type": "application/pdf",
  "resume_size": 4242,
  "resume_url": "http://cdn.com/resume.pdf",
  "stage_id": 14600,
  "updated_at": "2016-08-23T12:55:27.206+02:00",
  "profile": {
    "address": null,
    "avatar_url": "http://wk.dev/assets/default-avatar-7cbb7b9749a7cf8864001cde13e2a9a94e612bf083430d66ede0966f5bafb296.png",
    "city": null,
    "country_code": null,
    "country_name": null,
    "email": "test@example.com",
    "firstname": "Foo",
    "lastname": "Bar",
    "phone": null,
    "subtitle": null,
    "zip_code": null
  },
  "origin": "external",
  "archived": false
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
`job_stage_id` | Integer |  | | Job stage id | 42
`email` | String | ✔ | | Email | test@example.com
`firstname` | String | ✔ | | First name | John
`lastname` | String | ✔ | | Last name | Doe
`tag_list` | String | | | Comma separated list of tags | foo,bar
`subtitle` | String | | | Subtitle | CTO @ WTTJ
`phone` | String | | | Phone number | 0606060606
`remote_image_url` | String | | | Avatar url | http://example.com/avatar.png
`remote_resume_url` | String | | | Resume url (file type: PDF, DOC, DOCX, ODT maximum file size: 5MB) | http://example.com/resume.pdf
`remote_portfolio_url` | String | | | Portfolio url (file type: PDF, maximum file size: 10MB) | http://example.com/portfolio.pdf
`comment` | Text | | | A comment about this candidate | Lorem ipsum…
`archived` | Boolean | | | Archive user | true,false
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
`cover_letter` | String | | | Cover letter | Lorem ipsum…
`referrer` | String | | | Referrer | http://github.com/me


## Update a candidate

```shell
curl -X PUT "https://www.welcomekit.co/api/v1/external/candidates/wttj-d655345409a6097309156b05" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d @- <<EOF
{
  "email": "test@example.com",
  "firstname": "Foo",
  "lastname": "Bar",
  "remote_resume_url": "http://example.com/resume.pdf",
  "remote_portfolio_url": "http://example.com/portfolio.pdf"
}
EOF
```

> The above command returns JSON structured like this:

```json
{
  "reference": "wttj-d655345409a6097309156b05",
  "cover_letter": "",
  "created_at": "2016-08-23T12:55:27.206+02:00",
  "job_reference": "WTTJ_KmqkD1Y",
  "modal_path": "/dashboard/o/Pg4eV6k/jobs/WTTJ_KmqkD1Y/card/wttj-d655345409a6097309156b05",
  "portfolio_size": 4242,
  "portfolio_url": "http://cdn.com/porfolio.pdf",
  "resume_content_type": "application/pdf",
  "resume_size": 4242,
  "resume_url": "http://cdn.com/resume.pdf",
  "stage_id": 14600,
  "updated_at": "2016-08-23T12:55:27.206+02:00",
  "profile": {
    "address": null,
    "avatar_url": "http://wk.dev/assets/default-avatar-7cbb7b9749a7cf8864001cde13e2a9a94e612bf083430d66ede0966f5bafb296.png",
    "city": null,
    "country_code": null,
    "country_name": null,
    "email": "test@example.com",
    "firstname": "Foo",
    "lastname": "Bar",
    "phone": null,
    "subtitle": null,
    "zip_code": null
  },
  "origin": "external",
  "archived": false
}
```

<aside class="notice">
This endpoint requires <code>candidates_rw</code> scope.
</aside>

This endpoint lets you update candidates for a given `reference`.

### HTTP Request

`PUT https://www.welcomekit.co/api/v1/external/candidates/:reference`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`job_stage_id` | Integer |  | | Job stage id | 42
`email` | String | | | Email | test@example.com
`firstname` | String | | | First name | John
`lastname` | String | | | Last name | Doe
`tag_list` | String | | | Comma separated list of tags | foo,bar
`subtitle` | String | | | Subtitle | CTO @ WTTJ
`phone` | String | | | Phone number | 0606060606
`remote_image_url` | String | | | Avatar url | http://example.com/avatar.png
`remote_resume_url` | String | | | Resume url (file type: PDF, DOC, DOCX, ODT maximum file size: 5MB) | http://example.com/resume.pdf
`remote_portfolio_url` | String | | | Portfolio url (file type: PDF, maximum file size: 10MB) | http://example.com/portfolio.pdf
`archived` | Boolean | | | Archive user | true,false
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
`cover_letter` | String | | | Cover letter | Lorem ipsum…
