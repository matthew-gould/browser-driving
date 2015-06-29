require 'watir-webdriver'
require 'page-object'
require 'pry'

class GoogleSearch
  include PageObject

  browser = Watir::Browser.new :chrome
  # browser = Watir::Browser.new(ENV['BROWSER_TYPE'].to_sym)
  browser.window.resize_to('1200', '900')
  browser.goto 'http://google.com'

  text_field(:search, :id => 'lst-ib')
  button(:submit, :value => 'Search')

  google_search = GoogleSearch.new(browser)
  google_search.search= 'cardinal solutions'
  google_search.submit
end


