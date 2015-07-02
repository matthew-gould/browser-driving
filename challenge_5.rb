require 'watir-webdriver'
require 'page-object'
require 'pry'
require './page-objects/searchpage.rb'
require './page-objects/cardinalhome.rb'

def browse

    browser_type = ENV['BROWSER_TYPE'].to_sym || :chrome
    browser_size = ENV['BROWSER_SIZE'] || '1000'

    # opens new instance of google
    browser = Watir::Browser.new(browser_type)
    browser.window.resize_to(browser_size, '850')
    browser.goto 'http://google.com'
    return browser
end

my_page_object = SearchPage.new(browse)
my_page_object.search('cardinal solutions')
my_page_object.navigate_to_link
my_page_object.go_to_careers
my_page_object.get_text