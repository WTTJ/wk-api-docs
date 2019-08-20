# CMS articles

## Create a CMS article

```shell
curl -X POST "https://www.welcomekit.co/api/v1/external/cms/articles" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d @- <<EOF
{
  "name": "Shattered Mirror: An Introduction to Reflect and Unsafe",
  "content": "Go gives developers compile-time safety through its type system, and flexibility through interfaces. Sometimes, interfaces just aren’t flexible enough. Sometimes, you just want to write some code that isn’t safe at all. James talks about the outlaw packages of Go: reflect and unsafe. You’ll learn just enough about Go’s type system to understand how reflect and unsafe subvert it. Finally, he shows practical examples of using reflect, and some impractical examples of using unsafe.\n\n## Slides\n\n<div style='left: 0; width: 100%; height: 0; position: relative; padding-bottom: 56.1987%;'><iframe src='https://speakerdeck.com/player/bff9cfcd6e384587a3a97be411bfcdc6' width='100%' frameborder='0' marginwidth='0' marginheight='0' scrolling='no' style='border:1px solid #CCC; border-width:1px; margin-bottom:5px; top: 0; left: 0; max-width: 100%; height: 100%; position: absolute;' allowfullscreen> </iframe></div>",
  "summary": "Go gives developers compile-time safety through its type system, and flexibility through interfaces. Sometimes, interfaces just aren’t flexible enough. Sometimes, you just want to write some code that isn’t safe at all. James talks about the outlaw packages of Go: reflect and unsafe. You’ll learn just enough about Go’s type system to understand how reflect and unsafe subvert it. Finally, he shows practical examples of using reflect, and some impractical examples of using unsafe.",
  "cms_collection_id": 59,
  "language": "en",
  "slug": "james-bowes-shattered-mirror-an-introduction-to-reflect-and-unsafe",
  "cms_video": {"name": "Shattered Mirror: An Introduction to Reflect and Unsafe",
                "reference": "dot-video-james-bowes-shattered-mirror-an-introduction-to-reflect-and-unsafe",
                "source": "youtube",
                "external_reference": "ZJFMvWHtSAA",
                "description": "Go gives developers compile-time safety through its type system, and flexibility through interfaces. Sometimes, interfaces just aren’t flexible enough. Sometimes, you just want to write some code that isn’t safe at all. James talks about the outlaw packages of Go: reflect and unsafe. You’ll learn just enough about Go’s type system to understand how reflect and unsafe subvert it. Finally, he shows practical examples of using reflect, and some impractical examples of using unsafe."},
   "image": {"url": "https://live.staticflickr.com/7823/40546417563_c841356355_k_d.jpg"},
   "author": {"name": "James Bowes", "headline": "CTO of <a href="https://www.manifold.co/" target="_blank">Manifold</a> and experienced backend developer.",
              "avatar": {"url": "https://live.staticflickr.com/7927/32566777757_450045a30c_k_d.jpg"}}
}
EOF
```

> The above command returns JSON structured like this:

```json
{"id": 2841,
 "name": "Shattered Mirror: An Introduction to Reflect and Unsafe",
 "cms_collection": {"id":59, "title": "dotGo 2019"},
 "status": "draft",
 "created_at": "2019-08-19T15:58:58.587+02:00"}
```

<aside class="notice">
This endpoint requires <code>cms_articles_rw</code> scope.
</aside>

This endpoint lets you create new CMS articles.

Please note that upon successful creation, a CMS article is put in "draft" status. It will be reviewed by WTTJ before being published.

### HTTP Request

`POST https://www.welcomekit.co/api/v1/external/cms/articles`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`name` | String | ✔ | | Name |
`content` | String (markdown is supported) | ✔ | | Content |
`summary` | String | ✔ | | Summary |
`cms_collection_id` | Integer | ✔ | | Id of the CMS collection this article belongs to |
`language` | String | ✔ | | Language | en, fr, es
`slug` | String | | | Slug |
`cms_video` | Hash | | | CMS video (name, reference, source, external_reference and description of the CMS video) |
`image` | Hash | | | Image (only url is supported for the moment) |
`cms_author` | Hash | | | CMS Author (name, headline and avatar) |
