# 台灣統一編號產生器

自動產生台灣統一編號，用在 RSpec 避免 Model Validation 重複問題

# 環境需求

- Ruby 2.6+

# 安裝方式

`gem install tax_number_tw`

# 使用方法

```ruby
require 'tax_number/generator'

TaxNumber::Generator.tax_number => "57827987"
```

# Bug or PR

任何 Bug 回報和 PR 都歡迎在這邊開 issue 或是直接發 PR

[https://github.com/5xTraining/tax_number_generator_tw](https://github.com/5xTraining/tax_number_generator_tw) 

# License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT)