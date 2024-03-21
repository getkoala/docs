---
title: "GDPR Endpoint"
description: "A developer's guide for GDPR deletion via API"
---

## Requesting Deletion

Before starting with code, you'll need a secret API key to make the request, which you can create in Settings -> API Keys:

![](/images/developer-guides/gdpr-endpoint/generating-a-secret-key.png)

Endpoint: 
```https://app.getkoala.com/api/v1/deletion-requests```

Request instructions:
- The request must be sent via POST
- The request is authorized using our private API keys, and they must include an Authorization header in the following pattern: `Authorization: Bearer sk_21231kjlk123hj123kh`
- The limit of emails per request is 50. If the list has more than 50, we're just going to grab the first 50 and ignore the rest.
- Sample request body:
```
{
  "emails": [
    "emails1@email.com",
    "emails2@gmail.com"
  ]
}
```

When a deletion request is sent, it will respond with the deletion request id, like this:

```
{
	"deletion_request_id": "3772f22a-4f8d-4d14-8fa2-987a38c3456e"
}
```

## Checking Deletion Status


You can use your ID from the section above to check the deletion process by making a GET request, using the same
Authorization header above. Here is a sample GET request:

```
https://app.getkoala.com/api/v1/deletion-requests/3772f22a-4f8d-4d14-8fa2-987a38c3456e
```

As soon the process its done they will be able to consult the deletion receipt, the response should look like this
```
{
	"id": "3772f22a-4f8d-4d14-8fa2-987a38c3456e",
	"deleted_receipt": [
		{
			"ips": [
				"23.123.140.89"
			],
			"email": "netto@getkoala.com",
			"events": 0,
			"metrics": 0,
			"profiles": [
				"4839c81b-ec74-4c3e-a946-f77728359a9a"
			],
			"page_views": 0,
			"project_slug": true,
			"visitor_status": 1,
			"form_submissions": 0,
			"anonymous_profile": 0,
			"import_list_profile": 0,
			"account_associations": 0,
			"outreach_user_caches": 0,
			"clearbit_reveal_cache": 0,
			"hubspot_contact_cache": 0,
			"outreach_prospect_cache": 0,
			"clearbit_enrichment_cache": 0,
			"salesforce_contact_caches": 0
		}
	],
	"project_id": "de2a0d37-fbf8-4e9a-abd6-2efd20277d4d",
	"created_at": "2024-03-21T16:47:15.113Z",
	"updated_at": "2024-03-21T16:48:34.941Z",
	"created_by_id": "95aa57db-0d2b-42b9-a918-d402bef92d97",
	"input": [
		"netto@getkoala.com"
	],
	"status": "completed",
	"messages": []
}
```
