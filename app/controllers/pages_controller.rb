class PagesController < ApplicationController
  def index
  end

  def competitor
    # Visit getprice.com watches and filter for make watches between $100 and $200
    male_page = HTTParty.get('http://www.getprice.com.au/men-watches-watches-gpc205t21192mp200np100.htm')
    female_page = HTTParty.get('http://www.getprice.com.au/women-watches-watches-gpc205t21191mp200np100.htm')

    # Transform our HTTP response to a nokogiri object
    parse_male_page = Nokogiri::HTML(male_page)
    parse_female_page = Nokogiri::HTML(female_page)

    @getprice = {:male => [], :female => []}

    # Code to parse through male watches between $100 and $200
    parse_male_page.css(".results .list-item-grid").each do |el|
      name = el.css('.name a').text
      price = el.css('.price_box .price').text
      # This is very important, to get the href link you need to call .attribute('src').to_s
      image = el.css('.pic img').attribute('src').to_s
      supplier = el.css('.logo img').attribute('src').to_s
      gotoshop = el.css('.action .gotoshop a').attribute('href').to_s

      @getprice[:male] << {:name => name, :price => price, :image => image, :supplier => supplier, :gotoshop => gotoshop}
    end

    # Same code as above to parse through female watches between $100 and $200 from separate female_page url
    parse_female_page.css(".results .list-item-grid").each do |el|
      name = el.css('.name a').text
      price = el.css('.price_box .price').text
      image = el.css('.pic img').attribute('src').to_s
      supplier = el.css('.logo img').attribute('src').to_s
      gotoshop = el.css('.action .gotoshop a').attribute('href').to_s

      @getprice[:female] << {:name => name, :price => price, :image => image, :supplier => supplier, :gotoshop => gotoshop}
    end

    # Render data as JSON for future jQuery work
    respond_to do |format|
      format.json { render :json => @getprice}
      format.html
    end

  end

end
