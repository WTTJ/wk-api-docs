---
title: WelcomeKit API Reference

language_tabs:
  - shell

toc_footers:
  - <a href="mailto:contact@welcomekit.co" class="toc-footer-request">Request a token</a>
  - <a href="https://github.com/tripit/slate" target="_blank" class="toc-footer-copyright">Powered by Slate</a>

includes:
  - jobs
  - professions
  - candidates
  - departments
  - offices
  - users
  - embed
  - errors
  - faq

search: true
---

# Introduction

<a href="https://www.welcomekit.co/" target="_blank">Welcome Kit</a> provides you a powerful API which gives you full control over most of your recruiting data.

For now, the Welcome Kit API can be used to:

* Get all your candidates for a given job
* Create candidates for a given job
* Create and update jobs for a given organization
* Configure your organization (departments / offices / etc.)

<strong>In order to use the following endpoints, you will have to request an authentication token at <code>contact@welcomekit.co</code>.</strong>

Also, feel free to leave feedback, issues or features requests on the associated <a href="https://github.com/WTTJ/wk-api-docs" target="_blank">GitHub repository</a>!

# Authentication & Scopes

> Example:

```shell
curl "WK_API_ENDPOINT_HERE"
  -H "Authorization: Bearer WK_API_KEY"
```

> Make sure to replace `WK_API_KEY` with your API key.

Welcome Kit uses OAuth tokens to allow access to the API. We expect the OAuth token to be included in all API requests:

* 1/ Either in a header that looks like the following:

`Authorization: Bearer WK_API_KEY`

* 2/ Or, through query string:

`?access_token=WK_API_KEY`

<aside class="notice">
You must replace <code>WK_API_KEY</code> with your personal API key.
</aside>

Also note that Welcome Kit uses [OAuth scopes](https://tools.ietf.org/html/draft-ietf-oauth-v2-31#section-3.3) to protect its API endpoints.

Depending on the level of access you need, please ask us the required scopes from the list below:

Scope | Description
--- | ---
`me_r` |  Read access on your personnal information
`organizations_rw` |  Read and Write access on your organization(s)
`organizations_r` |  Read access on your organization(s)
`jobs_rw` |  Read and Write access on your job offers
`jobs_r` |  Read access on your job offers
`offices_rw` |  Read and Write access on your offices
`offices_r` |  Read access on your offices
`departments_rw` |  Read and Write access on your departments
`departments_r` |  Read access on your departments
`candidates_rw` |  Read and Write access on your candidates
`candidates_r` |  Read access on your candidates
