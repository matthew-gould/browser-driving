require 'watir-webdriver'
require 'page-object'
require 'pry'
require './googlesearch.rb'

class CardinalHome < SearchPage
  include PageObject

  link(:careers, :href => '/careers')
end