# SibApiV3Sdk::GetProcesses

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**processes** | [**Array&lt;GetProcess&gt;**](GetProcess.md) | List of processes available on your account | [optional] 
**count** | **Integer** | Number of processes available on your account | 

## Code Sample

```ruby
require 'SibApiV3Sdk'

instance = SibApiV3Sdk::GetProcesses.new(processes: null,
                                 count: 5)
```


