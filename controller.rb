require 'sinatra'
require_relative 'models/movie'

get '/' do
    erb :index
end

get '/movies' do
    @movies = Movie.all
    erb :all_movies
end

get '/movies/new' do
    erb :new
end

post "/create" do
    @movie = Movie.create(params)
    redirect "/"
end

# Create route to show all movies

# Create route to show form for a new movie

# Create route to create a new movie when form is submitted

# Create route to show one specific movie by ID

# Create route to show form to edit one specific movie

# Create route to update movie when edit form is submitted

# Create route to delete a movie 



