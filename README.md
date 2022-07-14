# 台灣統一編號產生器

自動產生台灣統一編號以及驗證統一編號是否正確。

# 環境需求

- Ruby 2.6+

# 安裝方式

`gem install tw_vat_number`

# 使用方法

```ruby
require 'tw/vat_number'

TW::VATNumber.generate => "57827987"

TW::VATNumber.valid?('00000022') => true
```

# Bug or PR

任何 Bug 回報和 PR 都歡迎在這邊開 issue 或是直接發 PR

[https://github.com/5xTraining/tw_vat_number](https://github.com/5xTraining/tw_vat_number) 

# License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT)