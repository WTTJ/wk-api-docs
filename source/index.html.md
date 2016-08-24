---
title: WelcomeKit API Reference

language_tabs:
  - shell

toc_footers:
  - <a href="mailto:support@welcomekit.co" class="toc-footer-request">Request a token</a>
  - <a href="https://github.com/tripit/slate" target="_blank" class="toc-footer-copyright">Powered by Slate</a>

includes:
  - jobs
  - professions
  - candidates

search: true
---

# Introduction

<a href="https://www.welcomekit.co/" target="_blank">Welcome Kit</a> provides you a powerful API which gives you full control over most of your recruiting data.

For now, the WelcomeKit API can be used to:

* Create and update jobs for a given organization
* Create candidates for a given job

<strong>In order to use the following endpoints, you will have to request an authentication token at <code>support@welcomekit.co</code>.</strong>

Also, feel free to leave feedback, issues or features requests on the associated <a href="https://github.com/WelcomeToTheJungle/wk-api-docs" target="_blank">GitHub repository</a>!

# Authentication

> Example:

```shell
curl "WK_API_ENDPOINT_HERE"
  -H "Authorization: Bearer WK_API_KEY"
```

> Make sure to replace `WK_API_KEY` with your API key.

WelcomeKit uses OAuth tokens to allow access to the API. We expect the OAuth token to be included in all API requests:

* 1/ Either in a header that looks like the following:

`Authorization: Bearer WK_API_KEY`

* 2/ Or, through query string:

`?access_token=WK_API_KEY`

<aside class="notice">
You must replace <code>WK_API_KEY</code> with your personal API key.
</aside>
