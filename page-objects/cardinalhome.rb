require 'watir-webdriver'
require 'page-object'
require 'pry'
require './googlesearch.rb'

class CardinalHome < SearchPage
  include PageObject

  link(:careers, :href => '/careers')

  def initialize(browser)
    super(browser)
  end

  def navigate_to_careers
    @@browser.careers
  end
end