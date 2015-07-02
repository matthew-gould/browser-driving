require 'watir-webdriver'
require 'page-object'
require 'pry'
require './page-objects/searchpage.rb'
require './page-objects/cardinalhome.rb'
require './page-objects/cardinalcareers.rb'



browser_type = ENV['BROWSER_TYPE'].to_sym || :chrome
browser_size = ENV['BROWSER_SIZE'] || '1000'

# opens new instance of google
browser = Watir::Browser.new(browser_type)
browser.window.resize_to(browser_size, '950')
browser.window.move_to(0,0)
browser.goto 'http://google.com'

google_search = SearchPage.new(browser)
google_search.search('cardinal solutions')
google_search.navigate_to_link
cardinal_home = CardinalHome.new(browser)
cardinal_home.go_to_careers
cardinal_careers = CardinalCareers.new(browser)
cardinal_careers.get_text