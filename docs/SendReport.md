# SibApiV3Sdk::SendReport

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**language** | **String** | Language of email content for campaign report sending. | [optional] [default to &#39;fr&#39;]
**email** | [**SendReportEmail**](SendReportEmail.md) |  | 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::SendReport.new(language: en,
                                 email: null)
```


