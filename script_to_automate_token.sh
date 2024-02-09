#!/bin/sh

# Wait for Elasticsearch to be up
while ! curl -s "http://elasticsearch:9200" > /dev/null; do
  sleep 1
done

# Generate API Key (adjust the request as necessary for your needs)
API_KEY=$(curl -s -X POST "http://elasticsearch:9200/_security/api_key" -H "Content-Type: application/json" -d '
{
  "name": "app_server_key",
  "expiration": "1d",
  "role_descriptors": {
    "app_server_role": {
      "cluster": ["all"],
      "index": [
        {
          "names": ["*"],
          "privileges": ["write"]
        }
      ]
    }
  }
}' -u elastic:ELASTIC_PASSWORD | jq -r '.api_key')

# Write the API key to a shared volume or a file
echo $API_KEY > /shared_volume/api_key.txt
