require 'pry'
require 'open-uri'
require 'nokogiri'

def get_townhall_email(townhall_url)

townhall_page = Nokogiri::HTML(open(townhall_url)) 

get_the_email = townhall_page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
list_url_array = []
list_url.each {|i| list_url_array << i.text}
return get_the_email

end


def get_townhall_urls(townhall_url)

all_links_page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html")) 

get_the_damn_link = all_links_page.xpath('//*[@class="lientxt"]/@href').map{|link| link.text }.map {|lol| lol.gsub('.','https://www.annuaire-des-mairies.com')}
return get_the_damn_link
end

def town_name

all_name_town = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html")) 

get_all_name = all_name_town.xpath('//*[@class="lientxt"]').map {|name| name.text}

end



















#page.xpath('//h1[@class="primary"]/a[@id="email"]')