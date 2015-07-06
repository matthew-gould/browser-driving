require 'watir-webdriver'
require 'page-object'
require 'pry'

class SearchPage
  include PageObject

  text_field(:search, :id => 'lst-ib')
  button(:submit, :value => 'Search')
  button(:submit2, :value => 'Google Search')
  link(:cardinal, :text => 'Cardinal Solutions | IT Consulting | Technology Solutions')

  def search(phrase)
    self.search= phrase
    (self.submit?) ? (self.submit) : (self.submit2)
  end

  def navigate_to_link
    Watir::Wait.until {self.text.include? 'cardinal'}
    cardinal
  end
end