* Add config/secrets/twitter-secrets.yml
* Set twitter.bearer-token property to your account api token
* Start all submodules with following command:
```
make build run
```
* Get request to http://localhost:9090/rules to list the existing rules for streaming
* Post request to http://localhost:9090/rules/add endpoint to add new rules for streaming
```json
{
	"data": [
	{
		"@type": "mention",
		"userId" : "<account-to-monitor-1>"
	},
        {
		"@type": "mention",
		"userId" : "<account-to-monitor-2>"
	}]
}
```
* Post request to http://localhost:9090/rules/delete endpoint to add new rules for streaming
```json
{
	"data" : [
		{ "id" : "<rule-id-to-delete-1>" },
		{ "id" : "<rule-id-to-delete-2>" }
	]
}
```
