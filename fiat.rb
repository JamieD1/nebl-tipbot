require 'nokogiri'
require 'open-uri'

fiat = open( "https://coinmarketcap.com/currencies/neblio/")
document = Nokogiri::HTML(fiat)

usd = document.xpath("/html/body/div[4]/div/div[1]/div[3]/div[2]/span[1]/span[1]").inner_html
k = usd.gsub(/\s+\<.*\>/, "")

percent = open( "https://coinmarketcap.com/currencies/neblio/")
documentx = Nokogiri::HTML(percent)

fix = documentx.xpath("/html/body/div[4]/div/div[1]/div[3]/div[2]/span[2]/span[1]").inner_html
b = fix.gsub(/\s+/, "")
x = " Δ #{b}"
print k ; print x






