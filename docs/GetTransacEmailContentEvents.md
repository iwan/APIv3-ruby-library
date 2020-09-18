# SibApiV3Sdk::GetTransacEmailContentEvents

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the event that occurred on the sent email | 
**time** | **DateTime** | Time at which the event occurred | 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::GetTransacEmailContentEvents.new(name: delivered,
                                 time: 2017-03-12T12:30Z)
```


