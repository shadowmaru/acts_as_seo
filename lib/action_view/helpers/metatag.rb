module ActionView
  module Helpers
    module Metatag
      def metatag_title(method=:metatag_title, options = {})
        InstanceTag.new(@object_name, method, self, nil, options.delete(:object)).to_input_field_tag("text", options)
      end
      
      def metatag_keywords(method=:metatag_keywords, options = {})
        InstanceTag.new(@object_name, method, self, nil, options.delete(:object)).to_input_field_tag("text", options)
      end
      
      def metatag_description(method=:metatag_description, options = {})
        InstanceTag.new(@object_name, method, self, nil, options.delete(:object)).to_text_area_tag(options)
      end
    end
  end
end