# SibApiV3Sdk::GetTransacBlockedContacts

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** | Count of blocked or unsubscribed contact | [optional] 
**contacts** | [**Array&lt;GetTransacBlockedContactsContacts&gt;**](GetTransacBlockedContactsContacts.md) |  | [optional] 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::GetTransacBlockedContacts.new(count: 1,
                                 contacts: null)
```


