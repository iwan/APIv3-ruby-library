# SibApiV3Sdk::SendEmailAttachment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | **String** | Base64 encoded chunk data of the attachment generated on the fly | 
**name** | **String** | Required for content. Name of the attachment | 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::SendEmailAttachment.new(content: b3JkZXIucGRm,
                                 name: myAttachment.png)
```


