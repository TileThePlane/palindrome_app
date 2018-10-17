require_relative 'test_helper'

class PalindromeAppTest < Minitest::Test
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	def test_index
		get '/'
		assert last_response.ok?
		assert doc(last_response).at_css('h1')
		title_content = doc(last_response).at_css('title').content
		assert_equal "First Ruby App | Home", title_content
		assert doc(last_response).at_css('nav')
	def test_about
		get '/about'
		assert last_response.ok?
		assert doc(last_response).at_css('h1')
		title_content = doc(last_response).at_css('title').content
		assert_equal "First Ruby App | About", title_content

	end

	def test_palindrome
		get '/palindrome'
		assert last_response.ok?
		assert doc(last_response).at_css('h1')
		title_content = doc(last_response).at_css('title').content
		assert_equal "First Ruby App | Palindrome Detector", title_content

	end
end

