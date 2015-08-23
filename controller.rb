require 'sinatra'
require_relative 'models/movie'

get '/' do
    erb :index
end

# Create route to show all movies
get '/movies' do
    @movies = Movie.all
    erb :all_movies
end


# Create route to show form for a new movie
get '/movies/new' do
    erb :new
end

# Create route to create a new movie when form is submitted
post "/create" do
    @movie = Movie.create(params)
    redirect "/"
end

get "/movies/:id" do
    @movie = Movie.find(params[:id].to_i)
    erb :show
end

# Create route to show one specific movie by ID

# Create route to show form to edit one specific movie

# Create route to update movie when edit form is submitted

# Create route to delete a movie 



