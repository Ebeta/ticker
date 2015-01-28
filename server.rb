require 'sinatra'
require 'nokogiri'
require 'httparty'
require 'json'

get '/' do 


response = HTTParty.get('http://finance.yahoo.com/q?s=AAPL')
dom = Nokogiri::HTML(response.body)
span = dom.xpath("//span[@id='yfs_l84_aapl' ]").first
price = span.content
puts "the current price of APPL is $#{price}"

end



