require 'watir-webdriver'
require 'page-object'
require 'pry'
require './googlesearch.rb'
require './cardinalhome.rb'

# @browser = Watir::Browser.new(:chrome)
# search_page = GoogleSearch.new(@browser)
# search_page.do_search

class SearchPage
  include PageObject

  text_field(:search, :id => 'lst-ib')
  button(:submit, :value => 'Search')
  button(:submit2, :value => 'Google Search')
  link(:cardinal, :text => 'Cardinal Solutions | IT Consulting | Technology Solutions')

  def search
    self.search= 'cardinal solutions'
    (self.submit?) ? (self.submit) : (self.submit2)
  end

  def navigate_to_link
    Watir::Wait.until {self.text.include? 'cardinal' }
    self.cardinal
  end
end

browser = Watir::Browser.new :chrome
browser.window.resize_to('1100', '850')
browser.window.move_to(0,0)
browser.goto 'http://google.com'
my_page_object = SearchPage.new(browser)
my_page_object.search
my_page_object.navigate_to_link