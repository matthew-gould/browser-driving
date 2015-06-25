require 'watir-webdriver'
require 'pry'

def browse
  browser = Watir::Browser.new :firefox
  browser.goto 'https://www.google.com/'

  browser.text_field(:id => 'lst-ib').set 'cardinal solutions'
  browser.button(:name => 'btnK').click
end