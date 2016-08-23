---
title: WelcomeKit API Reference

language_tabs:
  - shell

toc_footers:
  - <a href='https://github.com/tripit/slate'>Powered by Slate</a>

includes:
  - jobs
  - professions
  - candidates
  - requests
  - users

search: true
---

# Introduction

TODO

# Authentication

> To authorize, use this code:

```shell
curl "api_endpoint_here"
  -H "Authorization: Bearer WK_API_KEY"
```

> Make sure to replace `WK_API_KEY` with your API key.

WelcomeKit uses OAuth tokens to allow access to the API.

Request authentication token to `support@welcomekit.co`

WelcomeKit expects the OAuth token to be included in all API requests to
the server:

* in a header that looks like the following:

`Authorization: Bearer WK_API_KEY`

* in query string:

`?access_token=WK_API_KEY`

<aside class="notice">
You must replace <code>WK_API_KEY</code> with your personal API key.
</aside>
