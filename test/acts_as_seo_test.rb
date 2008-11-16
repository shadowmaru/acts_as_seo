require 'test/unit'
require File.dirname(__FILE__) + "/active_record/testing"

class Page < ActiveRecord::Base; acts_as_seo end

class ActsAsSEOTest < Test::Unit::TestCase
  def setup
    @page = Page.new
  end
  
  def test_should_have_one_metatag
    assert_respond_to(@page, :metatag)
  end
  
  def test_should_have_metatag_virtual_methods
    assert_respond_to(@page, :metatag_title)
    assert_respond_to(@page, :metatag_title=)
    assert_respond_to(@page, :metatag_keywords)
    assert_respond_to(@page, :metatag_keywords=)
    assert_respond_to(@page, :metatag_description)
    assert_respond_to(@page, :metatag_description=)
  end
  
  def test_should_create_a_metatag
    @page.metatag_title = "Testing"
    @page.save
    assert_equal("Testing", @page.metatag_title)
    assert_equal("Testing", @page.metatag.title)
  end
end
