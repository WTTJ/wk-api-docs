# Moves

## List moves

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/moves" \
    -d "organization_reference=wttj" \
    -d "job_reference=V-1841-0" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
[
  {
    "candidate": {"reference": "dc-41e24bb6e4a27"},
    "from": {
              "stage": {"id": 547, "name": "To meet", "reference": "to-meet"},
              "organization": {"reference": "wttj"},
              "job": {"reference": "V-1841-0"}
            },
    "to": {
            "stage": {"id": 295, "name": "Interviewed", "reference": "interviewed"},
            "organization": {"reference": "wttj"},
            "job": {"reference": "V-1841-0"}
          },
    "created_at": "2019-03-27T14:15:38.430+01:00",
    "updated_at": "2019-03-27T14:15:38.430+01:00"
  },
  ...
]
```

<aside class="notice">
This endpoint requires <code>moves_r</code> scope.
</aside>

There are 3 types of moves:

* a candidate moves from one job stage to another one (no job/organization change)
* a candidate moves from one job to another one (no organization change)
* a candidate moves from one job to another one from an another organization

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/moves`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organization_reference` | String | ✔ | | Reference of an organization/company involved in the move (from_organization and/or to_organization) | aEioU123
`job_reference` | String | ✔ | | Reference of a job involved in the move (from_job and/or to_job) | aEioU123
`per_page` | Integer | | 100 | Number of jobs per page |
`page` | Integer | | 1 | Page offset |
