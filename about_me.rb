require 'sinatra'
require 'pry'
require 'babbler'

get '/' do
	@pages = {'about me': '/about',
			 'art + design': 'http://vsco.co/limif/grid/1',
			 'business':'http://www.lapionera.com',
			 'resume': 'https://www.linkedin.com/in/lindseyfont',
			 'contact': '/contact'}
	erb :home
end

get '/about' do
	erb :about
end

get '/contact' do
	erb :contact
end

get '/resume' do
	'This is my resume page'
end

not_found do
 status 404
 'not found'
end
