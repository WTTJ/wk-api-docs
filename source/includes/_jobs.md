# Jobs

## Get jobs dependencies

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/jobs/dependencies" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
{
  "contract_types": [
    {
      "id": "UNLIMITED",
        "name": {
          "en": "Unlimited Contract",
          "fr": "CDI"
        }
    },
    {
      "id": "LIMITED",
      "name": {
        "en": "Limited duration",
        "fr": "CDD"
      }
    },
    {
      "id": "INTERNSHIP",
      "name": {
        "en": "Internship",
        "fr": "Stage"
      }
    },
    ...
  ],
  "education_levels": [
    {
      "id": "NO_DIPLOMA",
      "name": {
        "en": "No Diploma",
        "fr": "Sans dipl\u00f4me"
      }
    },
    {
      "id": "CAP",
      "name": {
        "en": "Youth Training",
        "fr": "CAP"
      }
    },
    {
      "id": "BAC",
      "name": {
        "en": "BTEC National Diploma",
        "fr": "Bac"
      }
    },
    ...
  ],
  "experience_levels": [
    {
      "id": "LESS_THAN_6_MONTHS",
      "name": {
        "en": "Less than 6 months",
        "fr": "Moins de 6 mois"
      }
    },
    {
      "id": "6_MONTHS_TO_1_YEAR",
      "name": {
        "en": "6 months - 1 year",
        "fr": "6 mois \u00e0 1 an"
      }
    },
    {
      "id": "1_TO_2_YEARS",
      "name": {
        "en": "1 - 2 years",
        "fr": "1 \u00e0 2 ans"
      }
    },
    ...
  ],
  "salary_currencies": [
    "EUR",
    "USD"
  ],
  "salary_periods": [
    "yearly",
    "monthly",
    "daily",
    "none"
  ],
  "cms_sites_references": [
    "wttj_fr",
    "smgo_fr"
  ]
}
```

<aside class="notice">
This endpoint requires <code>jobs_r</code> or <code>jobs_rw</code> scope.
</aside>

In order to create a job, you will need the following information:

* `salary_currencies`
  - authorized currencies when specifying a salary
  - _examples: EUR, USD_
* `salary_periods`
  - authorized periods when specifying a salary
  - _examples: yearly, monhtly, etc._
* `contract_types`
  - authorized contract types
  - _examples: UNLIMITED, INTERNSHIP, etc._
* `experience_levels`
  - authorized experience levels
  - _examples: PHD, NO_DIPLOMA, etc._
* `education_levels`
  - authorized education levels
  - _examples: 1_TO_2_YEARS, MORE_THAN_15_YEARS, etc._

NB: you will also need [authorized professions](#professions) to create any job offer.

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/jobs/dependencies`


## Create a job

```shell
curl -X POST "https://www.welcomekit.co/api/v1/external/jobs" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d @- <<EOF
{
  "organization_reference": "Pg4eV6k",
  "profession_reference": "sales",
  "name": "Fake Job",
  "description": "Fake Job Description.",
  "profile": "Fake Job Profile",
  "contract_type": "UNLIMITED",
  "salary_min": "45000",
  "salary_max": "50000",
  "salary_currency": "EUR",
  "salary_period": "yearly",
  "is_remote": "true",
  "is_full_time": "true",
  "office_zip_code": "75002",
  "education_level": "BAC_5",
  "experience_level": "1_TO_2_YEARS",
  "apply_url": "http://company.com/jobs/superjob/apply/",
  "start_date": "2016-09-01",
  "external_origin": "PROVIDER_NAME",
  "external_reference": "PROVIDER_REFERENCE",
  "cms_sites_references": "wttj_fr,smgo_fr"
}
EOF
```

> The above command returns JSON structured like this:

```json
{
  "name": "Fake Job",
  "reference": "WTTJ_KmqkD1Y",
  "status": "draft",
  "cms_sites_references": "wttj_fr,smgo_fr"
}
```

<aside class="notice">
This endpoint requires <code>jobs_rw</code> scope.
</aside>

### HTTP Request

`POST https://www.welcomekit.co/api/v1/external/jobs`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organization_reference` | String | ✔ | | Reference of the associated organization/company | aEioU123
`profession_reference` | String | ✔ | | Reference of the associated profession | "sales" / "finance" / "dev_backend" / etc. See [Professions endpoint](#professions)
`name` | String | ✔ | | Job name | Full-Stack Developer
`description` | Text | ✔ | | Job description (Explain the job, not the company)
`profile` | Text | ✔ | | Job profile (Explain who you're looking for)
`contract_type` | String | ✔ | |  Contract type for this job | UNLIMITED / INTERNSHIP / etc. See [jobs dependencies](#get-jobs-dependencies)
`salary_min` | Integer | | | Minimum salary for a given `salary_period` | 45000
`salary_max` | Integer | | | Maximum salary for a given `salary_period` | 55000
`salary_currency` | String | | | Currency for the given salary | EUR / USD. See [jobs dependencies](#get-jobs-dependencies)
`salary_period` | String | | | Period for the given salary | yearly, monthly, daily, none. See [jobs dependencies](#get-jobs-dependencies)
`is_remote` | Boolean | | | Is remote work authorized for this job? | true / false
`is_full_time` | Boolean | | | Is it a full time job? | true / false
`contract_duration_min` | Integer | Required for 'CDD' | | Minimum duration of the contract in months. | 1, 2, .., 24
`contract_duration_max` | Integer | Required for 'CDD' | | Maximum duration of the contract in months. | 1, 2, .., 24
`department_id` | Integer | | | Department ID. Mainly used by companies which have a careers website managed through WelcomeKit.co | 1
`office_id` | Integer | See below | | Office ID. An office is like a "location". If the office wasn't created for the targeted company, you will need to contact support@welcomekit.co first. Also, if you don't have an `office_id` you can call the API with `office_zip_code` or `office_country_code` which may be enough for us to retrieve the associated office. | 1
`office_zip_code` | String | See below | | Office zip code (`office_id` will be found from this). See: comment related to `office_id` | 75002
`office_country_code` | String | See below | | Office country code (`office_id` will be found from this). See: comment related to `office_id` | FR
`education_level` | String | | | Minimum education level ID | `BAC`, `BAC_5`, `PHD`, etc. See [jobs dependencies](#get-jobs-dependencies)
`experience_level` | String | | | Minimum experience level ID | `LESS_THAN_6_MONTHS`, `6_MONTHS_TO_1_YEAR`, `1_TO_2_YEARS`, etc. See [jobs dependencies](#get-jobs-dependencies)
`apply_url` | String | | | Job application URL. Do not input anything if you want to use WelcomeKit as your ATS | http://company.com/jobs/superjob/apply/
`start_date` | String | | | Start date for this job (YYYY-MM-DD) | 2015-11-26
`external_reference` | String | | | External provider Reference / ID for this job. The couple `external_origin` / `external_reference` must be unique. | |
`cms_sites_references` | String | | | Comma separated list of cms sites references to publish this job | wttj_fr,smgo_fr


Also, in the **required parameters**, you have to call this endpoint with **AT LEAST ONE** of the following attributes:

* `office_id`
* `office_zip_code`
* `office_country_code`


## Update a job

<aside class="notice">
This endpoint requires <code>jobs_rw</code> scope.
</aside>

```shell
curl -X PUT "https://www.welcomekit.co/api/v1/external/jobs/WTTJ_ZyDmzZ6" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d @- <<EOF
{
  "name": "Fake Job",
  "description": "Fake Job Description.",
  "profile": "Fake Job Profile",
  "contract_type": "UNLIMITED",
  "salary_min": "45000",
  "salary_max": "50000",
  "salary_currency": "EUR",
  "salary_period": "yearly",
  "is_remote": "true",
  "is_full_time": "true",
  "office_zip_code": "75002",
  "education_level": "BAC_5",
  "experience_level": "1_TO_2_YEARS",
  "apply_url": "http://company.com/jobs/superjob/apply/",
  "start_date": "2016-09-01",
  "external_origin": "PROVIDER_NAME",
  "external_reference": "PROVIDER_REFERENCE",
  "cms_sites_references": "wttj_fr,smgo_fr"
}
EOF
```

> The above command returns JSON structured like this:

```json
{
  "name": "Fake Job",
  "reference": "WTTJ_KmqkD1Y",
  "status": "draft",
  "cms_sites_references": "wttj_fr,smgo_fr"
}
```

### HTTP Request

`PUT https://www.welcomekit.co/api/v1/external/jobs/:reference`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`reference` | String | ✔ | | Job reference | |
`profession_reference` | String | | | Reference for a given profession | "sales" / "finance" / "dev_backend" / etc. See [Professions endpoint](#professions)
`name` | String | | | Job name | Full-Stack Developer
`description` | Text | | | Job description (Explain the job, not the company)
`profile` | Text | | | Job profile (Explain who you're looking for)
`contract_type` | String | | |  Contract type for this job | UNLIMITED / INTERNSHIP / etc. See [jobs dependencies](#get-jobs-dependencies)
`salary_min` | Integer | | | Minimum salary for a given `salary_period` | 45000
`salary_max` | Integer | | | Maximum salary for a given `salary_period` | 55000
`salary_currency` | String | | | Currency for the given salary | EUR / USD. See [jobs dependencies](#get-jobs-dependencies)
`salary_period` | String | | | Period for the given salary | yearly, monthly, daily, none. See [jobs dependencies](#get-jobs-dependencies)
`is_remote` | Boolean | | | Is remote work authorized for this job? | true / false
`is_full_time` | Boolean | | | Is it a full time job? | true / false
`contract_duration_min` | Integer | | | Minimum duration of the contract in months. | 1, 2, .., 24
`contract_duration_max` | Integer | | | Maximum duration of the contract in months. | 1, 2, .., 24
`department_id` | Integer | | | Department ID. Mainly used by companies which have a careers website managed through WelcomeKit.co | 1
`office_id` | Integer | | | Office ID. An office is like a "location". If the office wasn't created for the targeted company, you will need to contact support@welcomekit.co first. Also, if you don't have an `office_id` you can call the API with `office_zip_code` or `office_country_code` which may be enough for us to retrieve the associated office. | 1
`office_zip_code` | String | | | Office zip code (`office_id` will be found from this). See: comment related to `office_id` | 75002
`office_country_code` | String | | | Office country code (`office_id` will be found from this). See: comment related to `office_id` | FR
`education_level` | String | | | Minimum education level ID | `BAC`, `BAC_5`, `PHD`, etc. See [jobs dependencies](#get-jobs-dependencies)
`experience_level` | String | | | Minimum experience level ID | `LESS_THAN_6_MONTHS`, `6_MONTHS_TO_1_YEAR`, `1_TO_2_YEARS`, etc. See [jobs dependencies](#get-jobs-dependencies)
`apply_url` | String | | | Job application URL. Do not input anything if you want to use WelcomeKit as your ATS | http://company.com/jobs/superjob/apply/
`start_date` | String | | | Start date for this job (YYYY-MM-DD) | 2015-11-26
`external_reference` | String | | | External provider Reference / ID for this job. The couple `external_origin` / `external_reference` must be unique. | |
`cms_sites_references` | String | | | Comma separated list of cms sites references to publish this job | wttj_fr,smgo_fr


## Update job status

```shell
curl -X PUT "https://www.welcomekit.co/api/v1/external/jobs/:reference/update_status" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d @- <<EOF
{
  "status": "published"
}
EOF
```

> The above command returns JSON structured like this:

```json
{
  "name": "A job name",
  "reference": "WTTJ_ZyDmzZ6",
  "status": "published",
  "cms_sites_references": ""
}
```

<aside class="notice">
This endpoint requires <code>jobs_rw</code> scope.
</aside>

The default status for a job offer is "draft". In order to see it live, you will need to publish it.

Summary:

* `draft`: private job offer (still visible on main view of the dashboard)
* `published`: public job offer visible on all `cms_sites_references`
* `archived`: private job offer (visibile from archived jobs only)

### HTTP Request

`PUT https://www.welcomekit.co/api/v1/external/jobs/:reference/update_status`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`reference` | String | ✔ | | Job reference | |
`status` | String | ✔ | | Job status | `draft`, `published`, `archived` |
