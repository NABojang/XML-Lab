require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  # Place your methods here
  def get_menu_names
    @menu.search('name')
  end
  def get_menu_foods
    @menu.search('food')
  end
  def get_xpath_calories
    @menu.xpath('/breakfast_menu/food/calories')
  end
  def get_xpath_names
      @menu.xpath('//name')
  end
  def get_price
    @menu.xpath('/breakfast_menu/food/price').text.split('£')
  end
  def get_calories
    cal = @menu.xpath('/breakfast_menu/food/calories')
  end

  def get_waffles
     @menu.xpath('/breakfast_menu/food/name')
  end

end

guisepes = GuiseppesMenu.new
puts  guisepes.get_price
puts guisepes.get_calories
