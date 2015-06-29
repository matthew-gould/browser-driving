require 'watir-webdriver'
require 'pry'

  def browse

    browser_type = ENV['BROWSER_TYPE'].to_sym || :chrome
    browser_size = ENV['BROWSER_SIZE'] || '1000'

    # opens new instance of google
    browser = Watir::Browser.new(browser_type)
    browser.window.resize_to(browser_size, '800')
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