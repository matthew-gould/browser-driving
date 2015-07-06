require 'watir-webdriver'
require 'pry'

def browse
  # takes the browser type (chrome or firefox) on the command line
  # if ARGV[0] == "chrome"
  #   arg = :chrome
  # elsif ARGV[0] == "firefox"
  #   arg = :firefox
  # else
  #   puts "You didn't make a valid choice"
  #   return
  # end

  # opens new instance of google
  browser = Watir::Browser.new(ENV['BROWSER_TYPE'].to_sym)
  browser.window.resize_to('1200', '1000')
  browser.goto 'http://google.com'

  # enters text into search field and clicks submit button
  browser.text_field(:id => 'lst-ib').set 'cardinal solutions'
  browser.button(:name => 'btnG').click

  # selects the first link (cardinal solutions homepage in this case) after page loads
  Watir::Wait.until { browser.text.include? 'cardinal' }
  browser.h3(:class => 'r').link.click

  # navigates to the 'careers' section of CS page and puts the necessary text
  browser.link(:href => '/careers').click
  answer = browser.div(:class => 'textTitleImageWrap image-avail').h1.text
  puts answer
end

browse