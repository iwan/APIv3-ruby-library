# SibApiV3Sdk::SendSmtpEmailTo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Email address of the recipient | 
**name** | **String** | Name of the recipient. Maximum allowed characters are 70. | [optional] 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::SendSmtpEmailTo.new(email: jimmy98@example.com,
                                 name: Jimmy)
```


