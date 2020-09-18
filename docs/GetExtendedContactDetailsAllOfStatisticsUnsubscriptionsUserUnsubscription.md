# SibApiV3Sdk::GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsUserUnsubscription

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**campaign_id** | **Integer** | ID of the campaign which generated the event | 
**event_time** | **DateTime** | UTC date-time of the event | 
**ip** | **String** | IP from which the user has unsubscribed | 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsUserUnsubscription.new(campaign_id: 3,
                                 event_time: 2017-03-12T20:15:13Z,
                                 ip: 165.87.3.15)
```


