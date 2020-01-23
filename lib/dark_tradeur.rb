require 'pry'
require 'open-uri'
require 'nokogiri'



#get the page from coinmarket

coinmarket_page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")) 

#get all the crypto's name
all_crypto_symbols = coinmarket_page.xpath('//*[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__symbol"]')

crypto_symbol = all_crypto_symbols.map { |symbol| symbol.text  }

#get all the crypto's values

all_crypto_prices = coinmarket_page.xpath('//*[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]')

crypto_price = all_crypto_prices.map { |price| price.text.tr("$","").to_f }

#create an hash

my_crypto_hash = crypto_symbol.zip(crypto_price).to_h

#divide insto several hash

my_crypto_several_hash = my_crypto_hash.map { |k, v| { k => v } }

#put inside array

puts my_crypto_several_hash.to_a



