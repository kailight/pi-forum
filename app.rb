require 'rubygems'
require 'sinatra'
require 'slim'

Slim::Engine.default_options[:pretty] = true

# set :bind, '192.168.1.47'
# set :bind, 'otdarom.local'

=begin
not_found do
  status 404
  slim :oops
end

error 403 do
  'Access forbidden'
end


=end
error 404 do
  slim :oops
end

error 505 do
  'Whoops'
end

get '/' do
  puts 'Hello World'
  @author = "Kai Light"
  slim :layout
  end

get '/test' do
  'Test'
end
