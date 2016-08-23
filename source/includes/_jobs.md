# Jobs

## Get jobs dependencies

<aside class="notice">
This endpoint requires <code>jobs_r</code> or <code>jobs_rw</code> scope.
</aside>

In order to create a job, you may need the following information :

* `salary_currencies`
* `salary_periods`
* `contract_types`
* `experience_levels`
* `education_levels`

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/jobs/dependencies" \
    -H "Content-Type: application/json" \
    -H "Authorization: bearer wk-api-key"
```

> The above command returns JSON structured like this:

```json
{
  "contract_types": [
    {
      "id": "UNLIMITED",
        "multiposting_code": 1,
        "name": {
          "en": "Unlimited Contract",
          "fr": "CDI"
        }
    },
    {
      "id": "LIMITED",
      "multiposting_code": 2,
      "name": {
        "en": "Limited duration",
        "fr": "CDD"
      }
    },
    {
      "id": "INTERNSHIP",
      "multiposting_code": 3,
      "name": {
        "en": "Internship",
        "fr": "Stage"
      }
    },
    {
      "id": "INTERIM",
      "multiposting_code": 4,
      "name": {
        "en": "Interim",
        "fr": "Int\u00e9rim"
      }
    },
    {
      "id": "FREELANCE",
      "multiposting_code": 5,
      "name": {
        "en": "Freelance",
        "fr": "Freelance"
      }
    },
    {
      "id": "SALARIED",
      "multiposting_code": 6,
      "name": {
        "en": "Salaried Employee",
        "fr": "Contractuel"
      }
    },
    {
      "id": "APPRENTICE",
      "multiposting_code": 7,
      "name": {
        "en": "Apprenticeship",
        "fr": "Apprentissage / Alternance"
      }
    },
    {
      "id": "VIE",
      "multiposting_code": 8,
      "name": {
        "en": "International internship",
        "fr": "V.I.E."
      }
    },
    {
      "id": "FRANCHISE",
      "multiposting_code": 9,
      "name": {
        "en": "Franchise",
        "fr": "Franchise"
      }
    }
  ],
  "education_levels": [
    {
      "id": "NO_DIPLOMA",
      "multiposting_code": 1,
      "name": {
        "en": "No Diploma",
        "fr": "Sans dipl\u00f4me"
      }
    },
    {
      "id": "CAP",
      "multiposting_code": 2,
      "name": {
        "en": "Youth Training",
        "fr": "CAP"
      }
    },
    {
      "id": "BEP",
      "multiposting_code": 3,
      "name": {
        "en": "BTEC First Diploma",
        "fr": "BEP"
      }
    },
    {
      "id": "BAC",
      "multiposting_code": 4,
      "name": {
        "en": "BTEC National Diploma",
        "fr": "Bac"
      }
    },
    {
      "id": "BAC_1",
      "multiposting_code": 5,
      "name": {
        "en": "A-levels",
        "fr": "Bac +1"
      }
    },
    {
      "id": "BAC_2",
      "multiposting_code": 6,
      "name": {
        "en": "BTEC Higher National Diploma",
        "fr": "Bac +2"
      }
    },
    {
      "id": "BAC_3",
      "multiposting_code": 7,
      "name": {
        "en": "Bachelor's Degree",
        "fr": "Bac +3"
      }
    },
    {
      "id": "BAC_4",
      "multiposting_code": 8,
      "name": {
        "en": "-",
        "fr": "Bac +4"
      }
    },
    {
      "id": "BAC_5",
      "multiposting_code": 9,
      "name": {
        "en": "Master's Degree",
        "fr": "Bac +5 / Master"
      }
    },
    {
      "id": "PHD",
      "multiposting_code": 10,
      "name": {
        "en": "PhD and more",
        "fr": "> Bac +5 / Doctorat"
      }
    }
  ],
  "experience_levels": [
    {
      "id": "LESS_THAN_6_MONTHS",
      "multiposting_code": 1,
      "name": {
        "en": "Less than 6 months",
        "fr": "Moins de 6 mois"
      }
    },
    {
      "id": "6_MONTHS_TO_1_YEAR",
      "multiposting_code": 2,
      "name": {
        "en": "6 months - 1 year",
        "fr": "6 mois \u00e0 1 an"
      }
    },
    {
      "id": "1_TO_2_YEARS",
      "multiposting_code": 3,
      "name": {
        "en": "1 - 2 years",
        "fr": "1 \u00e0 2 ans"
      }
    },
    {
      "id": "2_TO_3_YEARS",
      "multiposting_code": 4,
      "name": {
        "en": "2 - 3 years",
        "fr": "2 \u00e0 3 ans"
      }
    },
    {
      "id": "3_TO_4_YEARS",
      "multiposting_code": 5,
      "name": {
        "en": "3 - 4 years",
        "fr": "3 \u00e0 4 ans"
      }
    },
    {
      "id": "4_TO_5_YEARS",
      "multiposting_code": 6,
      "name": {
        "en": "4 - 5 years",
        "fr": "4 \u00e0 5 ans"
      }
    },
    {
      "id": "5_TO_7_YEARS",
      "multiposting_code": 7,
      "name": {
        "en": "5 - 7 years",
        "fr": "5 \u00e0 7 ans"
      }
    },
    {
      "id": "7_TO_10_YEARS",
      "multiposting_code": 8,
      "name": {
        "en": "7 - 10 years",
        "fr": "7 \u00e0 10 ans"
      }
    },
    {
      "id": "10_TO_15_YEARS",
      "multiposting_code": 9,
      "name": {
        "en": "10 - 15 years",
        "fr": "10 \u00e0 15 ans"
      }
    },
    {
      "id": "MORE_THAN_15_YEARS",
      "multiposting_code": 10,
      "name": {
        "en": "More than 15 years",
        "fr": "Plus de 15 ans"
      }
    }
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
  ]
}
```

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/jobs/dependencies`


## Create a job

<aside class="notice">
This endpoint requires <code>jobs_rw</code> scope.
</aside>

Before being able to use this endpoint, you need to contact
support@welcomekit.co to get the reference for the targeted company.

```shell
curl -X POST "https://www.welcomekit.co/api/v1/external/jobs" \
    -H "Content-Type: application/json" \
    -H "Authorization: bearer wk-api-key" \
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
  "external_reference": "PROVIDER_REFERENCE"
}
EOF
```

> The above command returns JSON structured like this:

```json
{
  "name": "Fake Job",
  "reference": "WTTJ_KmqkD1Y",
  "stages": [
    {
      "id": 14752,
      "name": "New",
      "reference": "initial",
      "visible": true
    },
    {
      "id": 14753,
      "name": "Refused",
      "reference": "refused",
      "visible": true
    },
    {
      "id": 14754,
      "name": "After refus\u00e9",
      "reference": null,
      "visible": true
    },
    {
      "id": 14755,
      "name": "To Meet",
      "reference": "to_meet",
      "visible": true
    },
    {
      "id": 14756,
      "name": "Interview",
      "reference": "interviewed",
      "visible": true
    },
    {
      "id": 14757,
      "name": "Proposition!",
      "reference": null,
      "visible": true
    },
    {
      "id": 14758,
      "name": "Archived",
      "reference": "archived",
      "visible": false
    }
  ],
  "status": "draft"
}
```

### HTTP Request

`POST https://www.welcomekit.co/api/v1/external/jobs`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`organization_reference` | String | ✔ | | Reference for a given organization/company | aEioU123
`profession_reference` | String | ✔ | | Reference for a given profession | "sales" / "finance" / "dev_backend" / etc. See [Professions endpoint](#professions)
`name` | String | ✔ | | Job name | Full-Stack Developer
`description` | Text | ✔ | | Job description (Explain the job, not the company)
`profile` | Text | ✔ | | Job profile (Explain who you're looking for)
`contract_type` | String | ✔ | |  Contract type for this job | UNLIMITED / LIMITED / INTERNSHIP / etc. See [jobs dependencies](#get-jobs-dependencies)
`salary_min` | Integer | | | Minimum salary for a given `salary_period` | 45000
`salary_max` | Integer | | | Maximum salary for a given `salary_period` | 55000
`salary_currency` | String | | | Currency for the given salary | EUR / USD. See [jobs dependencies](#get-jobs-dependencies)
`salary_period` | String | | | Period for the given salary | yearly, monthly, daily, none. See [jobs dependencies](#get-jobs-dependencies)
`is_remote` | Boolean | | | Is remote work authorized for this job? | true / false
`is_full_time` | Boolean | | | Is it a full time job? | true / false
`contract_duration_min` | Integer | Required for CDD | | Minimum duration of the contract in months. | 1, 2, .., 24
`contract_duration_max` | Integer | | | Maximum duration of the contract in months. Required for 'CDD' | 1, 2, .., 24
`department_id` | Integer | | | Department ID. This is only used by companies having a career website generated through WelcomeKit.co | 1
`office_id` | Integer | | | Office ID. In WelcomeKit, an office is like a "location".If the office wasn't created for the targeted company, you will need to contact support@welcomekit.co first. Also, if you don't have an `office_id` you can call the API with `office_zip_code` or `office_country_code` which may be enough for us to find the associated office | 1
`office_zip_code` | String | | | Office zip code (`office_id` will be found from this). See: comment related to `office_id` | 75002
`office_country_code` | String | | | Office country code (`office_id` will be found from this). See: comment related to `office_id` | FR
`education_level` | String | | | Minimum education level ID | "BAC", "BAC_5", "PHD", etc. See [jobs dependencies](#get-jobs-dependencies)
`experience_level` | String | | | Minimum experience level ID | `LESS_THAN_6_MONTHS`, `6_MONTHS_TO_1_YEAR`, `1_TO_2_YEARS`, etc. See [jobs dependencies](#get-jobs-dependencies)
`apply_url` | String | | | Job application URL. Do not input anything if you want to use WelcomeKit as your ATS | http://company.com/jobs/superjob/apply/
`start_date` | String | | | Start date for this job (YYYY-MM-DD) | 2015-11-26
`external_origin` | String | | | External provider name | |
`external_reference` | String | | | External provider Reference / ID for this job | |

Also, in the required parameters, you have to call this endpoint with AT LEAST ONE of the following attributes:

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`office_id` | Integer | | | Office id in the WelcomeKit database | 42
`office_zip_code` | String | | | Office zip code | 75002
`office_country_code` | String | | | Office country code | FR


## Update a job

<aside class="notice">
This endpoint requires <code>jobs_rw</code> scope.
</aside>

```shell
curl -X PUT "https://www.welcomekit.co/api/v1/external/jobs/WTTJ_ZyDmzZ6" \
    -H "Content-Type: application/json" \
    -H "Authorization: bearer wk-api-key" \
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
  "external_reference": "PROVIDER_REFERENCE"
}
EOF
```

> The above command returns JSON structured like this:

```json
{
  "name": "Fake Job",
  "reference": "WTTJ_KmqkD1Y",
  "stages": [
    {
      "id": 14752,
      "name": "New",
      "reference": "initial",
      "visible": true
    },
    {
      "id": 14753,
      "name": "Refused",
      "reference": "refused",
      "visible": true
    },
    {
      "id": 14754,
      "name": "After refus\u00e9",
      "reference": null,
      "visible": true
    },
    {
      "id": 14755,
      "name": "To Meet",
      "reference": "to_meet",
      "visible": true
    },
    {
      "id": 14756,
      "name": "Interview",
      "reference": "interviewed",
      "visible": true
    },
    {
      "id": 14757,
      "name": "Proposition!",
      "reference": null,
      "visible": true
    },
    {
      "id": 14758,
      "name": "Archived",
      "reference": "archived",
      "visible": false
    }
  ],
  "status": "draft"
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
`contract_type` | String | | |  Contract type for this job | UNLIMITED / LIMITED / INTERNSHIP / etc. See [jobs dependencies](#get-jobs-dependencies)
`salary_min` | Integer | | | Minimum salary for a given `salary_period` | 45000
`salary_max` | Integer | | | Maximum salary for a given `salary_period` | 55000
`salary_currency` | String | | | Currency for the given salary | EUR / USD. See [jobs dependencies](#get-jobs-dependencies)
`salary_period` | String | | | Period for the given salary | yearly, monthly, daily, none. See [jobs dependencies](#get-jobs-dependencies)
`is_remote` | Boolean | | | Is remote work authorized for this job? | true / false
`is_full_time` | Boolean | | | Is it a full time job? | true / false
`contract_duration_min` | Integer | Required for CDD | | Minimum duration of the contract in months. | 1, 2, .., 24
`contract_duration_max` | Integer | | | Maximum duration of the contract in months. Required for 'CDD' | 1, 2, .., 24
`department_id` | Integer | | | Department ID. This is only used by companies having a career website generated through WelcomeKit.co | 1
`office_id` | Integer | | | Office ID. In WelcomeKit, an office is like a "location".If the office wasn't created for the targeted company, you will need to contact support@welcomekit.co first. Also, if you don't have an `office_id` you can call the API with `office_zip_code` or `office_country_code` which may be enough for us to find the associated office | 1
`office_zip_code` | String | | | Office zip code (`office_id` will be found from this). See: comment related to `office_id` | 75002
`office_country_code` | String | | | Office country code (`office_id` will be found from this). See: comment related to `office_id` | FR
`education_level` | String | | | Minimum education level ID | "BAC", "BAC_5", "PHD", etc. See [jobs dependencies](#get-jobs-dependencies)
`experience_level` | String | | | Minimum experience level ID | `LESS_THAN_6_MONTHS`, `6_MONTHS_TO_1_YEAR`, `1_TO_2_YEARS`, etc. See [jobs dependencies](#get-jobs-dependencies)
`apply_url` | String | | | Job application URL. Do not input anything if you want to use WelcomeKit as your ATS | http://company.com/jobs/superjob/apply/
`start_date` | String | | | Start date for this job (YYYY-MM-DD) | 2015-11-26
`external_origin` | String | | | External provider name | |
`external_reference` | String | | | External provider Reference / ID for this job | |
`office_id` | Integer | | | Office id in the WelcomeKit database | 42
`office_zip_code` | String | | | Office zip code | 75002
`office_country_code` | String | | | Office country code | FR


## Update job status

<aside class="notice">
This endpoint requires <code>jobs_rw</code> scope.
</aside>

```shell
curl -X PUT "https://www.welcomekit.co/api/v1/external/jobs/:reference/update_status" \
    -H "Content-Type: application/json" \
    -H "Authorization: bearer wk-api-key" \
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
  "stages": [
    {
      "id": 14600,
      "name": "New",
      "reference": "initial",
      "visible": true
    },
    {
      "id": 14601,
      "name": "Refused",
      "reference": "refused",
      "visible": true
    },
    {
      "id": 14602,
      "name": "To Meet",
      "reference": "to_meet",
      "visible": true
    },
    {
      "id": 14603,
      "name": "Interview",
      "reference": "interviewed",
      "visible": true
    },
    {
      "id": 14604,
      "name": "Propositione",
      "reference": "made_offer",
      "visible": true
    },
    {
      "id": 14605,
      "name": "Archived",
      "reference": "archived",
      "visible": false
    },
    {
      "id": 14730,
      "name": "last column",
      "reference": "",
      "visible": true
    }
  ],
  "status": "published"
}
```

### HTTP Request

`PUT https://www.welcomekit.co/api/v1/external/jobs/:reference/update_status`

### Query Parameters

Parameter | Type | Required | Default | Description | Example
--- | --- | --- | --- | --- | ---
`reference` | String | ✔ | | Job reference | |
`status` | String | ✔ | | Job status | draft, published, archived |
