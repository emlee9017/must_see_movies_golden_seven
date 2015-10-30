class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
  end

  def show
    @movie=Movie.find(params[:id])
  end

  def new_form
  end

  def create_row
    @movie = Movie.new
    @movie.title = params[:dob]
    @movie.year = params[:name]
    @movie.duration = params[:bio]
    @movie.description = params[:desciption]
    @movie.image_url = params[:image_url]
    @movie.save

    redirect_to("/movies")
  end

  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update_row
    @movie = Movie.find(params[:id])
    @movie.title = params[:dob]
    @movie.year = params[:name]
    @movie.duration = params[:bio]
    @movie.description = params[:desciption]
    @movie.image_url = params[:image_url]
    @movie.save

    render("show.html.erb")
  end

  def destroy
    @movie = Movie.find(params[:id])

    @movie.destroy
  end
end
