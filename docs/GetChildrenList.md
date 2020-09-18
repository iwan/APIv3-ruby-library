# SibApiV3Sdk::GetChildrenList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**children** | [**Array&lt;GetChildInfo&gt;**](GetChildInfo.md) | Your children&#39;s account information | [optional] 
**count** | **Integer** | Number of child accounts | 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::GetChildrenList.new(children: null,
                                 count: 24)
```


