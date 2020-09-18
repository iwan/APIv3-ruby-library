# SibApiV3Sdk::GetAccountAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**plan** | [**Array&lt;GetAccountAllOfPlan&gt;**](GetAccountAllOfPlan.md) | Information about your plans and credits | 
**relay** | [**GetAccountAllOfRelay**](GetAccountAllOfRelay.md) |  | 
**marketing_automation** | [**GetAccountAllOfMarketingAutomation**](GetAccountAllOfMarketingAutomation.md) |  | [optional] 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::GetAccountAllOf.new(plan: null,
                                 relay: null,
                                 marketing_automation: null)
```


