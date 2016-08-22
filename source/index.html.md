---
title: WelcomeKit API Reference

language_tabs:
  - shell

toc_footers:
  - <a href='#TODO'>Sign Up for a Developer Key</a>
  - <a href='https://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - jobs

search: true
---

# Introduction

TODO

# Authentication

> To authorize, use this code:

```shell
curl "api_endpoint_here"
  -H "Authorization: bearer wk-api-key"
```

> Make sure to replace `wk-api-key` with your API key.

WelcomeKit uses OAuth tokens to allow access to the API.

Request authentication token to `support@welcomekit.co`

WelcomeKit expects the OAuth token to be included in all API requests to
the server:

* in a header that looks like the following:

`Authorization: bearer wk-api-key`

* in query string:

`?access_token=wk-api-key`

<aside class="notice">
You must replace <code>wk-api-key</code> with your personal API key.
</aside>
