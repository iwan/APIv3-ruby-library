# SibApiV3Sdk::GetAccountAllOfRelayData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_name** | **String** | Email to use as login on transactional platform | 
**relay** | **String** | URL of the SMTP Relay | 
**port** | **Integer** | Port used for SMTP Relay | 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::GetAccountAllOfRelayData.new(user_name: john.smith@example.com,
                                 relay: relay.domain.com,
                                 port: 125)
```

