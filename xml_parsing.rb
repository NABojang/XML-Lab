require 'nokogiri'

class GuiseppesMenu
  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('xml_menu.xml'))
  end

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
    @menu.search('price')
  end

end

guisepes = GuiseppesMenu.new

# puts guisepes.get_menu_names.last.inner_html
# puts guisepes.get_menu_foods.text
# puts guisepes.get_menu_names.length
puts guisepes.get_xpath_calories
puts  guisepes.get_xpath_names
