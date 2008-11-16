# Based on Brazilian Rails implementation
# http://github.com/tapajos/brazilian-rails/tree/master/brcpfcnpj/spec/active_record/base_without_table.rb

require 'rubygems'
require 'active_record'
require File.dirname(__FILE__) + "/../../lib/active_record/acts/seo"
require File.dirname(__FILE__) + "/../../lib/metatag.rb"
ActiveRecord::Base.send :include, ActiveRecord::Acts::SEO

ActiveRecord::Base.establish_connection(:adapter=>"sqlite3", :database => ":memory:")
require File.dirname(__FILE__) + "/../../db/create_testing_structure"

CreateTestingStructure.migrate(:up)

class Page < ActiveRecord::Base
  acts_as_seo
end