require 'sinatra'
# require 'nokogiri'
require 'httparty'
require 'json'

get '/ticker' do 
	{code: File.read('ticker/ticker.rb')}
end



