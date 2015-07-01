require 'watir-webdriver'
require 'page-object'
require 'pry'

class SearchPage
  include PageObject

  text_field(:search, :id => 'lst-ib')
  button(:submit, :value => 'Search')
  button(:submit2, :value => 'Google Search')
  link(:cardinal, :text => 'Cardinal Solutions | IT Consulting | Technology Solutions')
  link(:careers, :href => '/careers')
  h1(:answer, :text => 'We employ smart people and keep them happy.')

  def search
    self.search= 'cardinal solutions'
    (self.submit?) ? (self.submit) : (self.submit2)
  end

  def navigate_to_link
    Watir::Wait.until {self.text.include? 'cardinal' }
    cardinal
  end

  def go_to_careers
    careers
  end

  def get_text
    text = answer
    puts text
  end
end

browser = Watir::Browser.new :chrome
browser.window.resize_to('1100', '850')
browser.window.move_to(0,0)
browser.goto 'http://google.com'
my_page_object = SearchPage.new(browser)
my_page_object.search
my_page_object.navigate_to_link
my_page_object.go_to_careers
my_page_object.get_text