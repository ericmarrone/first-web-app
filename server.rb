require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/home' do
  erb :index
end

get "/portfolio" do
  erb :gallery
end

get "/about_me" do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about
end

get "/favourites" do
  @fav_links = [{ 'Google' => 'http://www.google.com'}, { 'Amazon'=> 'http://www.amazon.com'}]
  erb :favourites
end

get '/gallery' do
  redirect to('/portfolio')
end
