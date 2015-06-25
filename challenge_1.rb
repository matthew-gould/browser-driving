require 'watir-webdriver'
require 'pry'

def firefox_browse
  # opens new instance of google in Firefox
  browser = Watir::Browser.new :firefox
  browser.goto 'http://google.com'

  # enters text into search field and clicks submit button
  browser.text_field(:id => 'lst-ib').set 'cardinal solutions'
  browser.button(:name => 'btnG').click

  # selects the first link (cardinal solutions homepage in this case)
  binding.pry
  browser.h3(:class => 'r').link.click

  # navigates to the 'careers' section of CS page and puts the necessary text
  browser.link(:href => '/careers').click
  answer = browser.div(:class => 'hero-text bg-blue').text
  puts answer
end

firefox_browse