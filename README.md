# AutoAwesompleteTag

Provide tag-helper methods for create awesomplete elements by the same way as any other view elements.

[![Gem Version](https://badge.fury.io/rb/auto_awesomplete_tag.png)](http://badge.fury.io/rb/auto_awesomplete_tag)

## Installation

Firstly install [AutoAwesomplete](https://github.com/Tab10id/auto_awesomplete#installation) with
dependency. Then add this line to your application's Gemfile:

    gem 'auto_awesomplete_tag'

And execute:

    $ bundle

## Example

(stub)

## Usage

Gem provide only one helper method for initialize awesomplete elements:

* awesomplete_ajax_tag

details about realization you can find on
[AutoAwesomplete](https://github.com/Tab10id/auto_awesomplete#installation) page.

### awesomplete_ajax_tag

    awesomplete_ajax_tag(name, searcher, value = nil, options = {})

All allowed options for this helper can be found on
[AutoAwesomplete](https://github.com/Tab10id/auto_awesomplete#ajax-awesomplete-usage) page. look at example
below; this is an easy way to understand helper parameters.

#### Example of usage select2_ajax_tag

If you define [SearchAdapter](https://github.com/Tab10id/auto_awesomplete#example-of-minimalistic-searchadapter)
named `MySearchAdapterName`, you can use the follow code:

    = select2_ajax_tag :my_select2_name,
                       :my_search_adapter_name,
                       placeholder: 'Fill me now!',
                       search_method: :unusual_case,
                       class: 'my-select2-input'

If you want lightweight selection over columns of `ActiveRecord` model:

    = select2_ajax_tag :my_select2_name,
                       {class_name: :your_model_name, text_column: :name},
                       my_init_value_id,
                       placeholder: 'Fill me now!'

In this case you get awesomplete with search by `name` column over model `YourModelName`.

## Contributing

1. Fork it ( http://github.com/Tab10id/auto_awesomplete_tag/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request