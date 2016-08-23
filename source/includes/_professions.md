# Professions

## Get all professions

In order to create a job, you may need a `profession_reference`.

Through our API, you can access the list of all active professions.

```shell
curl -X GET "https://www.welcomekit.co/api/v1/external/professions" \
    -H "Content-Type: application/json" \
    -H "Authorization: bearer wk-api-key"
```

> The above command returns JSON structured like this:

```json
[
    {
        "fullname": "Business > Audit / Finance",
        "reference": "finance"
    },
    {
        "fullname": "Business > Conseil",
        "reference": "consulting"
    },
    {
        "fullname": "Business > Marketing",
        "reference": "marketing"
    },
    {
        "fullname": "Business > Op\u00e9rations",
        "reference": "operations"
    },
    {
        "fullname": "Business > Logistique / Achats",
        "reference": "logistics"
    },
    {
        "fullname": "Business > Relation client / Support",
        "reference": "support"
    },
    {
        "fullname": "Tech > D\u00e9veloppement Backend",
        "reference": "dev_backend"
    },
    {
        "fullname": "Tech > D\u00e9veloppement Frontend",
        "reference": "dev_frontend"
    },
    {
        "fullname": "Tech > D\u00e9veloppement Mobile",
        "reference": "dev_mobile"
    },
    {
        "fullname": "Tech > D\u00e9veloppement Fullstack",
        "reference": "dev_fullstack"
    },
    {
        "fullname": "Tech > Devops / Infrastructure",
        "reference": "devops"
    },
    {
        "fullname": "Tech > Hardware",
        "reference": "hardware"
    },
    {
        "fullname": "Tech > Data Science",
        "reference": "datascience"
    },
    {
        "fullname": "Tech > SEO / SEM",
        "reference": "seo"
    },
    {
        "fullname": "Tech > Recherche / R&D",
        "reference": "research"
    },
    {
        "fullname": "Tech > T\u00e9l\u00e9com / R\u00e9seaux",
        "reference": "telecom"
    },
    {
        "fullname": "Administratif > Administration",
        "reference": "administrative"
    },
    {
        "fullname": "Administratif > Juridique",
        "reference": "legal"
    },
    {
        "fullname": "Administratif > RH / Formation",
        "reference": "hr"
    },
    {
        "fullname": "Business > Evenementiel",
        "reference": "evenementiel"
    },
    {
        "fullname": "Cr\u00e9a > Communication / Cr\u00e9ation",
        "reference": "communication"
    },
    {
        "fullname": "Cr\u00e9a > Community Management",
        "reference": "community_management"
    },
    {
        "fullname": "Cr\u00e9a > Production audiovisuelle",
        "reference": "video"
    },
    {
        "fullname": "Cr\u00e9a > Graphisme / Illustration",
        "reference": "graphisme"
    },
    {
        "fullname": "Cr\u00e9a > Design / UX / UI",
        "reference": "design"
    },
    {
        "fullname": "Business > BizDev / Vente",
        "reference": "sales"
    },
    {
        "fullname": "Cr\u00e9a > Journalisme / RP",
        "reference": "editorial"
    },
    {
        "fullname": "Tech > Gestion de Projet / Produit",
        "reference": "project_management"
    },
    {
        "fullname": "Administratif > Compta / Contr\u00f4le de Gestion",
        "reference": "accounting"
    },
    {
        "fullname": "Retail > Wholesale",
        "reference": "wholesale"
    },
    {
        "fullname": "Retail > Merchandising",
        "reference": "merchandising"
    },
    {
        "fullname": "Retail > Store Manager",
        "reference": "store_manager"
    },
    {
        "fullname": "Cr\u00e9a > Styliste",
        "reference": "fashion_designer"
    },
    {
        "fullname": "Cr\u00e9a > Mod\u00e9liste",
        "reference": "fashion_maker"
    },
    {
        "fullname": "Cr\u00e9a > Direction Artistique",
        "reference": "artistic_direction"
    },
    {
        "fullname": "Retail > Vente",
        "reference": "retail_sales"
    }
]
```

### HTTP Request

`GET https://www.welcomekit.co/api/v1/external/professions`
