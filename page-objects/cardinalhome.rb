require 'watir-webdriver'
require 'page-object'
require 'pry'
require './googlesearch.rb'

class CardinalHome < GoogleSearch
  include PageObject
  
end