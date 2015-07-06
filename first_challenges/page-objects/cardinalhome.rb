require 'watir-webdriver'
require 'page-object'
require 'pry'

class CardinalHome
  include PageObject

  link(:careers, :href => '/careers')

  def go_to_careers
    self.careers
  end
end