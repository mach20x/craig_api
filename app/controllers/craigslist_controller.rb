class CraigslistController < ApplicationController
  def index
      @profile = HTTParty.get("https://miami.craigslist.org/search/sof")

      dom = Nokogiri::HTML(@profile.body)

      i=0

      @info = dom.css('.content').css('.result-row').css('.hdrlnk').map do |a|
      p "#{i += 1}. " "#{a.text}"
    end
  end
end
