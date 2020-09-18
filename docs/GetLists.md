# SibApiV3Sdk::GetLists

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lists** | [**Array&lt;GetList&gt;**](GetList.md) | Listing of all the lists available in your account | 
**count** | **Integer** | Number of lists in your account | 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::GetLists.new(lists: null,
                                 count: 150)
```


