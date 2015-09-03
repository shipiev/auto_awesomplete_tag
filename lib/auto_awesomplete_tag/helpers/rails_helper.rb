module AutoAwesompleteTag
  module RailsHelper
    def awesomplete_ajax_tag(name, searcher, value = nil, options={})
      original_classes = options.delete(:class)
      original_data = options.delete(:data) || {}
      search_method = options.delete(:search_method)
      classes = ['auto-ajax-awesomplete', original_classes].compact.join(' ')
      controller_params = {}
      if searcher.is_a?(Hash)
        controller_params[:default_class_name] = searcher[:class_name] if searcher[:class_name].present?
        controller_params[:default_text_column] = searcher[:text_column] if searcher[:text_column].present?
        # @fixme don't use
        controller_params[:default_id_column] = searcher[:id_column] if searcher[:id_column].present?
        # @fixme don't use
        controller_params[:hash_method] = searcher[:hash_method] if searcher[:hash_method].present?
        controller_params[:label_method] = searcher[:label_method] if searcher[:label_method].present?
      else
        controller_params[:class_name] = searcher
      end
      if search_method.present?
        controller_params.merge!({ search_method: search_method })
      end
      system_field_options = {
          class: classes,
          data: original_data.merge(
              {awesomplete_href: auto_awesompletes_path(controller_params)}
          )
      }
      field_options = system_field_options.merge(options)
      text_field_tag(name, value, field_options)
    end
  end
end
