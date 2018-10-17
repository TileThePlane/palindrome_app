require 'sinatra'

get '/' do
	erb :index, :layout => :page
end

get '/about' do
	erb :about, :layout => :page
end

get '/palindrome' do
	erb :palindrome, :layout => :page
end

