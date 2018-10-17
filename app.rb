require 'sinatra'

get '/' do
	@title = 'Home'
	erb :index, :layout => :page
end

get '/about' do
	@title = 'About'
	erb :about, :layout => :page
end

get '/palindrome' do
	@title = 'Palindrome
	erb :palindrome, :layout => :page
end

