# SibApiV3Sdk::GetSmtpTemplates

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** | Count of transactional email templates | [optional] 
**templates** | [**Array&lt;GetSmtpTemplateOverview&gt;**](GetSmtpTemplateOverview.md) |  | [optional] 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::GetSmtpTemplates.new(count: 1,
                                 templates: null)
```


