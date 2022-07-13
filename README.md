# 台灣統一編號產生器

自動產生台灣統一編號以及驗證統一編號是否正確。

# 環境需求

- Ruby 2.6+

# 安裝方式

`gem install TW_GUI_Number`

# 使用方法

```ruby
require 'TW/gui_number'

TW::GUINumber.generate => "57827987"

TW::GUINumber.valid?('00000022') => true
```

# Bug or PR

任何 Bug 回報和 PR 都歡迎在這邊開 issue 或是直接發 PR

[https://github.com/5xTraining/TW_GUI_Number](https://github.com/5xTraining/TW_GUI_Number) 

# License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT)