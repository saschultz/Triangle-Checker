require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/triangle'

get '/' do
  @triangles = Triangle.all()
  erb(:index)
end

post '/triangles' do
  side1 = params.fetch('side1').to_i
  side2 = params.fetch('side2').to_i
  side3 = params.fetch('side3').to_i
  new_triangle = Triangle.new(side1, side2, side3)
  #@result = new_triangle.triangle_type
  redirect "/"
  erb(:index)
end

post '/clear' do
  Triangle.clear()
  redirect "/"
end
