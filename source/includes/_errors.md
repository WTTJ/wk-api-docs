# Errors

The WelcomeKit API uses the following HTTP status codes:

Status Code | Meaning
---------- | -------
`400` | Bad Request -- Your request is invalid
`401` | Unauthorized -- Your OAuth access_token is wrong
`403` | Forbidden -- Your not allowed to access this resource
`404` | Not Found -- Ressource could not be found
`405` | Method Not Allowed -- You tried to use an endpoint with an invalid method
`500` | Internal Server Error -- We had a problem with our server. Try again later.
`503` | Service Unavailable -- We're temporarially offline for maintanance. Please try again later.

When the Welcomkit API returns error messages, it does in JSON format:

```
{
  "error": "unauthorized",
  "error_description": "You are not member of this organization"
}
```

Error Codes | Meaning
------------|--------
`not_found` | Resource not found
`validation_failed` | Some params are invalid
`unauthorized` | You OAuth access_token is invalid
`invalid_scope` | OAuth access_token scope is not authorized
