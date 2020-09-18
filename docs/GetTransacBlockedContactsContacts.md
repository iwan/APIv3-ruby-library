# SibApiV3Sdk::GetTransacBlockedContactsContacts

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Email address of the blocked or unsubscribed contact | 
**sender_email** | **String** | Sender email address of the blocked or unsubscribed contact | 
**reason** | [**GetTransacBlockedContactsReason**](GetTransacBlockedContactsReason.md) |  | 
**blocked_at** | **DateTime** | Date when the contact was blocked or unsubscribed on | 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::GetTransacBlockedContactsContacts.new(email: john.smith@example.com,
                                 sender_email: john.smith@example.com,
                                 reason: null,
                                 blocked_at: 2017-05-01T12:30Z)
```


