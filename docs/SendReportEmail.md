# SibApiV3Sdk::SendReportEmail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **String** | Subject of the email message | 
**to** | **Array&lt;String&gt;** | Email addresses of the recipients | 
**content_type** | **String** | Type of the message body | [optional] [default to &#39;html&#39;]
**bcc** | **Array&lt;String&gt;** | Email addresses of the recipients in bcc | [optional] 
**cc** | **Array&lt;String&gt;** | Email addresses of the recipients in cc | [optional] 
**body** | **String** | Body of the email message | 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::SendReportEmail.new(subject: Report of the last campaign,
                                 to: null,
                                 content_type: html,
                                 bcc: null,
                                 cc: null,
                                 body: Please find attached the report of our last email campaign.)
```


