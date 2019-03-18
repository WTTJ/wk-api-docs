# Jobs

## Get jobs dependencies

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/jobs/dependencies" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY"
```

> The above command returns JSON structured like this:

```json
{
  "contract_types": [
    {
      "id": "FULL_TIME",
        "name": {
          "en": "Full-Time",
          "fr": "CDI"
        }
    },
    {
      "id": "TEMPORARY",
      "name": {
        "en": "Temporary",
        "fr": "CDD / Temporaire"
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
  - *examples: EUR, USD*
* `salary_periods`
  - authorized periods when specifying a salary
  - *examples: yearly, monhtly, etc.*
* `contract_types`
  - authorized contract types
  - *examples: FULL_TIME, PART_TIME, TEMPORARY, FREELANCE, INTERNSHIP, APPRENTICESHIP*
* `experience_levels`
  - authorized experience levels
  - *examples: 1_TO_2_YEARS, MORE_THAN_15_YEARS, etc.*
* `education_levels`
  - authorized education levels
  - *examples: PHD, NO_DIPLOMA, etc.*
* `cms_sites_references`
  - authorized cms sites references
  - *examples: wttj_fr,smgo_fr,btbw_fr etc.*

NB: you will also need [authorized professions](#professions) to create any job offer.

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/jobs/dependencies`

## List jobs

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/jobs" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d "organization_reference=Pg4eV6k" \
    -d "status=published" \
    -d "created_after=2017-10-30"
```

> The above command returns JSON structured like this:

```json
[
  {
    "name" : "Fake Job 1",
    "external_reference" : "PROVIDER_REFERENCE1",
    "organization_reference" : "Pg4eV6k",
    "status" : "draft",
    "profile" : "Fake Job Profile",
    "apply_url" : "http://company.com/jobs/superjob/apply/",
    "company_description" : "Fake Company Description.",
    "contract_duration_min" : null,
    "experience_level" : "1_TO_2_YEARS",
    "department_id" : null,
    "profession_reference" : "sales",
    "cms_sites_references" : "wttj_fr",
    "contract_duration_max" : null,
    "start_date" : "2016-09-01T00:00:00.000+02:00",
    "description" : "Fake Job Description.",
    "contract_type" : "FULL_TIME",
    "salary": {
      "min": "30000",
      "max": "40000",
      "currency": "EUR",
      "period": "yearly"
    },
    "is_remote" : true,
    "office_id" : 196,
    "reference" : "WTTJ_gld0A7L",
    "education_level" : "BAC_5",
    "created_at" : "2017-11-13T17:15:26.146+01:00",
    "updated_at" : "2017-11-13T17:15:26.146+01:00",
    "published_at" : "2017-11-13T18:00:01.146+01:00",
    "archived_at" : null
  },
  {
    "name" : "Fake Job 2",
    "external_reference" : "PROVIDER_REFERENCE2",
    "organization_reference" : "Pg4eV6k",
    "status" : "draft",
    "profile" : "Fake Job Profile",
    "apply_url" : "http://company.com/jobs/superjob/apply/",
    "company_description" : "Fake Company Description.",
    "contract_duration_min" : null,
    "experience_level" : "1_TO_2_YEARS",
    "department_id" : null,
    "profession_reference" : "sales",
    "cms_sites_references" : "wttj_fr,smgo_fr,btbw_fr",
    "contract_duration_max" : null,
    "start_date" : "2016-09-01T00:00:00.000+02:00",
    "description" : "Fake Job Description.",
    "contract_type" : "FULL_TIME",
    "salary": {
      "min": "30000",
      "max": "40000",
      "currency": "EUR",
      "period": "yearly"
    },
    "is_remote" : true,
    "office_id" : 196,
    "reference" : "WTTJ_gld0A7L",
    "education_level" : "BAC_5",
    "created_at" : "2017-11-13T17:15:26.146+01:00",
    "updated_at" : "2017-11-13T17:15:26.146+01:00",
    "published_at" : "2017-11-13T18:00:01.146+01:00",
    "archived_at" : null
  }
]
```

<aside class="notice">
This endpoint requires <code>jobs_r</code> or <code>jobs_rw</code> scope.
</aside>

This endpoint lets you retrieve all jobs for a given organization.

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/jobs`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organization_reference` | String | ✔ | | Reference of the associated organization/company | aEioU123
`stages` | Boolean | | false | Returns job stages | true / false
`websites` | Boolean | | false | Returns associated websites URLs | true / false
`status` | String | | | Returns jobs with this specific status | draft / published / archived
`per_page` | Integer | | 100 | Number of jobs per page |
`page` | Integer | | 1 | Page offset |
`created_after` | String | | | Returns jobs created after this date (YYYY-MM-DD) | 2015-11-26
`updated_after` | String | | | Returns jobs updated after this date (YYYY-MM-DD) | 2015-11-26
`published_after` | String | | | Returns jobs published after this date (YYYY-MM-DD) | 2015-11-26


## Retrieve a job

```shell
curl -X GET -G "https://www.welcomekit.co/api/v1/external/jobs/:reference" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d "stages=true" \
    -d "websites=true"
```

> The above command returns JSON structured like this:

```json
{
  "name" : "Fake Job 2",
  "external_reference" : "PROVIDER_REFERENCE2",
  "organization_reference" : "Pg4eV6k",
  "status" : "draft",
  "profile" : "Fake Job Profile",
  "apply_url" : "http://company.com/jobs/superjob/apply/",
  "company_description" : "Fake Company Description.",
  "contract_duration_min" : null,
  "experience_level" : "1_TO_2_YEARS",
  "department_id" : null,
  "profession_reference" : "sales",
  "cms_sites_references" : "wttj_fr,smgo_fr",
  "contract_duration_max" : null,
  "start_date" : "2016-09-01T00:00:00.000+02:00",
  "description" : "Fake Job Description.",
  "contract_type" : "FULL_TIME",
  "salary": {
    "min": "30000",
    "max": "40000",
    "currency": "EUR",
    "period": "yearly"
  },
  "is_remote" : true,
  "office_id" : 196,
  "reference" : "WTTJ_gld0A7L",
  "education_level" : "BAC_5",
  "stages" : [
    {
      "visible" : true,
      "reference" : "initial",
      "id" : 5395,
      "name" : "Nouveau"
    },
    {
      "reference" : "refused",
      "visible" : true,
      "id" : 5396,
      "name" : "Refusé"
    },
    {
      "id" : 5397,
      "name" : "À rencontrer",
      "reference" : null,
      "visible" : true
    },
    ...
  ],
  "created_at" : "2017-11-13T17:15:26.146+01:00",
  "updated_at" : "2017-11-13T17:15:26.146+01:00",
  "published_at" : null,
  "archived_at" : null,
  "websites" : [
     {
        "reference" : "wttj_fr",
        "name" : "Welcome to the Jungle",
        "url" : "http://preprod.welcometothejungle.co/companies/wttj/jobs/fake-job-2"
     },
    ...
  ]
}
```

<aside class="notice">
This endpoint requires <code>jobs_r</code> or <code>jobs_rw</code> scope.
</aside>

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/jobs/:reference`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`reference` | String | ✔ | | Job reference | aEioU123
`stages` | Boolean | | false | Returns job stages | true / false
`websites` | Boolean | | false | Returns associated websites URLs | true / false


## Create a job

```shell
curl -X POST "https://www.welcomekit.co/api/v1/external/jobs" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer WK_API_KEY" \
    -d @- <<EOF
{
  "status": "published",
  "organization_reference": "Pg4eV6k",
  "profession_reference": "sales",
  "name": "Fake Job",
  "company_description": "Fake Company Description.",
  "description": "Fake Job Description.",
  "profile": "Fake Job Profile",
  "contract_type": "FULL_TIME",
  "salary_min": "30000",
  "salary_max": "40000",
  "salary_currency": "EUR",
  "salary_period": "yearly",
  "is_remote": "true",
  "office_zip_code": "75002",
  "education_level": "BAC_5",
  "experience_level": "1_TO_2_YEARS",
  "apply_url": "http://company.com/jobs/superjob/apply/",
  "start_date": "2016-09-01",
  "external_reference": "PROVIDER_REFERENCE",
  "cms_sites_references": "wttj_fr,smgo_fr"
}
EOF
```

> The above command returns JSON structured like this:

```json
{
  "name" : "Fake Job",
  "external_reference" : "PROVIDER_REFERENCE1",
  "organization_reference" : "Pg4eV6k",
  "status" : "published",
  "profile" : "Fake Job Profile",
  "apply_url" : "http://company.com/jobs/superjob/apply/",
  "company_description" : "Fake Company Description.",
  "contract_duration_min" : null,
  "experience_level" : "1_TO_2_YEARS",
  "department_id" : null,
  "profession_reference" : "sales",
  "cms_sites_references" : "wttj_fr,smgo_fr",
  "contract_duration_max" : null,
  "start_date" : "2016-09-01T00:00:00.000+02:00",
  "description" : "Fake Job Description.",
  "contract_type" : "FULL_TIME",
  "salary": {
    "min": "30000",
    "max": "40000",
    "currency": "EUR",
    "period": "yearly"
  },
  "is_remote" : true,
  "office_id" : 196,
  "reference" : "WTTJ_gld0A7L",
  "education_level" : "BAC_5",
  "created_at" : "2017-11-13T17:15:26.146+01:00",
  "updated_at" : "2017-11-13T17:15:26.146+01:00",
  "published_at" : "2017-11-13T18:00:01.146+01:00",
  "archived_at" : null
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
`profession_reference` | String | ✔ | | Reference of the associated profession | "sales" / "market_finance" / "dev_backend" / etc. See [Professions endpoint](#professions)
`name` | String | ✔ | | Job name | Full-Stack Developer
`company_description` | Text | ✔ | | Company description (Describe the company)
`description` | Text | ✔ | | Job description (Explain the job, not the company)
`profile` | Text | ✔ | | Job profile (Explain who you're looking for)
`recruitment_process` | Text | | | Job Recruitment Process (Delay / Interviews / Tests / etc.)
`contract_type` | String | ✔ | |  Contract type for this job | FULL_TIME / INTERNSHIP / etc. See [jobs dependencies](#get-jobs-dependencies)
`status` | String | | | Job status | `draft`, `published`, `archived` |
`salary_min` | Integer | | | Minimum salary for a given `salary_period` | 45000
`salary_max` | Integer | | | Maximum salary for a given `salary_period` | 55000
`salary_currency` | String | | | Currency for the given salary | EUR / USD. See [jobs dependencies](#get-jobs-dependencies)
`salary_period` | String | | | Period for the given salary | yearly, monthly, daily, none. See [jobs dependencies](#get-jobs-dependencies)
`is_remote` | Boolean | | | Is remote work authorized for this job? | true / false
`contract_duration_min` | Integer | Recommended for 'TEMPORARY' contract type | | Minimum duration of the contract in months. | 1, 2, .., 36
`contract_duration_max` | Integer | Recommended for 'TEMPORARY' contract type | | Maximum duration of the contract in months. | 1, 2, .., 36
`department_id` | Integer | | | Department ID. Mainly used by companies which have a careers website managed through WelcomeKit.co | 1
`office_id` | Integer | See below | | Office ID. An office is like a "location". If the office wasn't created for the targeted company, you will need to contact support@welcomekit.co first. Also, if you don't have an `office_id` you can call the API with `office_zip_code` or `office_country_code` which may be enough for us to retrieve the associated office. | 1
`office_address` | String | See below | | Office zip code (office will be found or created from this). See: comment related to `office_id` | 11b rue Bachaumont
`office_zip_code` | String | See below | | Office zip code (office will be found or created from this). See: comment related to `office_id` | 75002
`office_city` | String | See below | | Office zip code (office will be found or created from this). See: comment related to `office_id` | Paris
`office_country_code` | String | See below | | Office country code (office will be found or created from this). See: comment related to `office_id` | FR
`education_level` | String | | | Minimum education level ID | `BAC`, `BAC_5`, `PHD`, etc. See [jobs dependencies](#get-jobs-dependencies)
`experience_level` | String | | | Minimum experience level ID | `LESS_THAN_6_MONTHS`, `6_MONTHS_TO_1_YEAR`, `1_TO_2_YEARS`, etc. See [jobs dependencies](#get-jobs-dependencies)
`apply_url` | String | | | Job application URL. Do not input anything if you want to use WelcomeKit as your ATS | http://company.com/jobs/superjob/apply/
`start_date` | String | | | Start date for this job (YYYY-MM-DD) | 2015-11-26
`external_reference` | String | | | External provider Reference / ID for this job. (unique constraint) | |
`cms_sites_references` | String | | | Comma separated list of cms sites references to publish this job | `wttj_fr,smgo_fr,btbw_fr`, `wttj_fr`, etc. See [jobs dependencies](#get-jobs-dependencies)


Also, in the **required parameters**, you have to call this endpoint with **AT LEAST ONE** of the following attributes:

* `office_id`
* `office_address`
* `office_zip_code`
* `office_city` (mandatory for creation)
* `office_country_code` (mandatory for creation)

If the related office is not found from the previous parameters, we will try to create the office if the following conditions are respected:

* access to <code>offices_rw</code> scope
* all mandatory attributes to create an office: `office_city`, `office_country_code`


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
  "company_description": "Fake Company Description.",
  "description": "Fake Job Description.",
  "profile": "Fake Job Profile",
  "contract_type": "FULL_TIME",
  "salary_min": "30000",
  "salary_max": "40000",
  "salary_currency": "EUR",
  "salary_period": "yearly",
  "is_remote": "true",
  "office_zip_code": "75002",
  "education_level": "BAC_5",
  "experience_level": "1_TO_2_YEARS",
  "apply_url": "http://company.com/jobs/superjob/apply/",
  "start_date": "2016-09-01",
  "external_reference": "PROVIDER_REFERENCE",
  "cms_sites_references": "wttj_fr,smgo_fr"
}
EOF
```

> The above command returns JSON structured like this:

```json
{
  "name" : "Fake Job",
  "external_reference" : "PROVIDER_REFERENCE1",
  "organization_reference" : "Pg4eV6k",
  "status" : "draft",
  "profile" : "Fake Job Profile",
  "apply_url" : "http://company.com/jobs/superjob/apply/",
  "company_description" : "Fake Company Description.",
  "contract_duration_min" : null,
  "experience_level" : "1_TO_2_YEARS",
  "department_id" : null,
  "profession_reference" : "sales",
  "cms_sites_references" : "wttj_fr,smgo_fr",
  "contract_duration_max" : null,
  "start_date" : "2016-09-01T00:00:00.000+02:00",
  "description" : "Fake Job Description.",
  "contract_type" : "FULL_TIME",
  "salary": {
    "min": "30000",
    "max": "40000",
    "currency": "EUR",
    "period": "yearly"
  },
  "is_remote" : true,
  "office_id" : 196,
  "reference" : "WTTJ_gld0A7L",
  "education_level" : "BAC_5",
  "created_at" : "2017-11-13T17:15:26.146+01:00",
  "updated_at" : "2017-11-13T17:15:26.146+01:00",
  "published_at" : null,
  "archived_at" : null
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
`company_description` | Text | ✔ | | Company description (Describe the company)
`description` | Text | | | Job description (Explain the job, not the company)
`profile` | Text | | | Job profile (Explain who you're looking for)
`recruitment_process` | Text | | | Job Recruitment Process (Delay / Interviews / Tests / etc.)
`contract_type` | String | | |  Contract type for this job | FULL_TIME / INTERNSHIP / etc. See [jobs dependencies](#get-jobs-dependencies)
`salary_min` | Integer | | | Minimum salary for a given `salary_period` | 45000
`salary_max` | Integer | | | Maximum salary for a given `salary_period` | 55000
`salary_currency` | String | | | Currency for the given salary | EUR / USD. See [jobs dependencies](#get-jobs-dependencies)
`salary_period` | String | | | Period for the given salary | yearly, monthly, daily, none. See [jobs dependencies](#get-jobs-dependencies)
`is_remote` | Boolean | | | Is remote work authorized for this job? | true / false
`contract_duration_min` | Integer | | | Minimum duration of the contract in months. | 1, 2, .., 36
`contract_duration_max` | Integer | | | Maximum duration of the contract in months. | 1, 2, .., 36
`department_id` | Integer | | | Department ID. Mainly used by companies which have a careers website managed through WelcomeKit.co | 1
`office_id` | Integer | | | Office ID. An office is like a "location". If the office wasn't created for the targeted company, you will need to contact support@welcomekit.co first. Also, if you don't have an `office_id` you can call the API with `office_zip_code` or `office_country_code` which may be enough for us to retrieve the associated office. | 1
`office_address` | String | | | Office zip code (office will be found or created from this). See: comment related to `office_id` | 11b rue Bachaumont
`office_zip_code` | String | | | Office zip code (office will be found or created from this). See: comment related to `office_id` | 75002
`office_city` | String | | | Office zip code (office will be found or created from this). See: comment related to `office_id` | Paris
`office_country_code` | String | | | Office country code (office will be found or created from this). See: comment related to `office_id` | FR
`education_level` | String | | | Minimum education level ID | `BAC`, `BAC_5`, `PHD`, etc. See [jobs dependencies](#get-jobs-dependencies)
`experience_level` | String | | | Minimum experience level ID | `LESS_THAN_6_MONTHS`, `6_MONTHS_TO_1_YEAR`, `1_TO_2_YEARS`, etc. See [jobs dependencies](#get-jobs-dependencies)
`apply_url` | String | | | Job application URL. Do not input anything if you want to use WelcomeKit as your ATS | http://company.com/jobs/superjob/apply/
`start_date` | String | | | Start date for this job (YYYY-MM-DD) | 2015-11-26
`external_reference` | String | | | External provider Reference / ID for this job. (unique constraint) | |
`cms_sites_references` | String | | | Comma separated list of cms sites references to publish this job | `wttj_fr,smgo_fr,btbw_fr`, `wttj_fr`, etc. See [jobs dependencies](#get-jobs-dependencies)


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
  "name" : "Fake Job",
  "external_reference" : "PROVIDER_REFERENCE1",
  "organization_reference" : "Pg4eV6k",
  "status" : "published",
  "profile" : "Fake Job Profile",
  "apply_url" : "http://company.com/jobs/superjob/apply/",
  "company_description" : "Fake Company Description.",
  "contract_duration_min" : null,
  "experience_level" : "1_TO_2_YEARS",
  "department_id" : null,
  "profession_reference" : "sales",
  "cms_sites_references" : "wttj_fr,smgo_fr",
  "contract_duration_max" : null,
  "start_date" : "2016-09-01T00:00:00.000+02:00",
  "description" : "Fake Job Description.",
  "contract_type" : "FULL_TIME",
  "salary": {
    "min": "30000",
    "max": "40000",
    "currency": "EUR",
    "period": "yearly"
  },
  "is_remote" : true,
  "office_id" : 196,
  "reference" : "WTTJ_gld0A7L",
  "education_level" : "BAC_5",
  "created_at" : "2017-11-13T17:15:26.146+01:00",
  "updated_at" : "2017-11-13T17:15:26.146+01:00",
  "published_at" : "2017-11-13T17:15:26.146+01:00",
  "archived_at" : null
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
