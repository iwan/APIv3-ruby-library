# SibApiV3Sdk::SendSmtpEmailSender

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the sender from which the emails will be sent. Maximum allowed characters are 70. | [optional] 
**email** | **String** | Email of the sender from which the emails will be sent | 
**id** | **Integer** | Id of the sender from which the emails will be sent | [optional] 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::SendSmtpEmailSender.new(name: Mary from MyShop,
                                 email: no-reply@myshop.com,
                                 id: 2)
```


