# FAQ

## Get published jobs count?

```shell
curl -X HEAD -i "https://www.welcomekit.co/api/v1/external/jobs" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d "organization_reference=Pg4eV6k" \
    -d "status=published"
```

> The above command returns the following headers:

```
[...]
X-Total: 18
X-Total-Pages: 1
X-Per-Page: 100
X-Page: 1
X-Offset: 0
[...]
```

You just need to read the `X-Total` header of the `GET /external/jobs` endpoint.

NB:

* Do not forget to filter your jobs by status (see: `?status=published`)
* The default "Spontaneous job" is part of the total count.
