ActiveRecord::Base.send :include, ActiveRecord::Acts::SEO
ActionView::Helpers::FormBuilder.send :include, ActionView::Helpers::Metatag
require File.dirname(__FILE__) + "/lib/metatag.rb"