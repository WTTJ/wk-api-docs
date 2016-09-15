# Errors

The Welcome Kit API uses the following HTTP status codes:

Status Code | Meaning
---------- | -------
`400` | Bad Request -- Your request is invalid
`401` | Unauthorized -- Your OAuth access_token is wrong
`403` | Forbidden -- Your not allowed to access this resource
`404` | Not Found -- Ressource could not be found
`405` | Method Not Allowed -- You tried to use an endpoint with an invalid method
`500` | Internal Server Error -- We had a problem with our server. Try again later.
`503` | Service Unavailable -- We're temporarially offline for maintanance. Please try again later.

Error messages are returned in JSON format as described below:

```
{
  "error": "unauthorized",
  "error_description": "You are not member of this organization"
}
```

Error Codes | Meaning
------------|--------
`not_found` | Resource not found
`validation_failed` | Some parameters are invalid
`unauthorized` | You OAuth access_token is invalid
`invalid_scope` | OAuth access_token scope is not authorized
