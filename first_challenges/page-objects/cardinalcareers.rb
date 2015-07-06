require 'watir-webdriver'
require 'page-object'
require 'pry'

class CardinalCareers
  include PageObject

   h1(:answer, :text => 'We employ smart people and keep them happy.')

  def get_text
    text = self.answer
    puts text
  end
end