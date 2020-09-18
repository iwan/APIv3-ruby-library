# SibApiV3Sdk::SendSmtpEmailCc

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Email address of the recipient in cc | 
**name** | **String** | Name of the recipient in cc. Maximum allowed characters are 70. | [optional] 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::SendSmtpEmailCc.new(email: ann6533@example.com,
                                 name: Ann)
```


