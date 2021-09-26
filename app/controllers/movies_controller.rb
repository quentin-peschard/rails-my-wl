class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
    @movies = Movie.all
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render 'movies/index'
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url)
  end
end
