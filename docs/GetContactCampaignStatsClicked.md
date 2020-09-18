# SibApiV3Sdk::GetContactCampaignStatsClicked

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**campaign_id** | **Integer** | ID of the campaign which generated the event | 
**links** | [**Array&lt;GetExtendedContactDetailsAllOfStatisticsLinks&gt;**](GetExtendedContactDetailsAllOfStatisticsLinks.md) |  | 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::GetContactCampaignStatsClicked.new(campaign_id: 3,
                                 links: null)
```


