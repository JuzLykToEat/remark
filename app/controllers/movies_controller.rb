class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def movies_by_actor
    actor_name = params['actor_name']
    movie_ids = Actor.where(name: actor_name).pluck(:movie_id).uniq
    @movies = Movie.where(id: movie_ids)

    render :index
  end
end
