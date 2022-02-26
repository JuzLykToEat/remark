require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test 'responds to movie attributes' do
    assert Lead.new.respond_to?   :name
    assert Lead.new.respond_to?   :description
    assert Lead.new.respond_to?   :year
    assert Lead.new.respond_to?   :director
  end

  test 'loads all movies' do
    movies = Movie.all

    assert_equal 2, movies.count
  end

  test 'get movies by actor' do
    actor = Actor.find_by(name: 'actor_1')
    movie_id = Actor.find_by(name: 'actor_1').movie_id
    movie = Movie.find_by(id: movie_id)

    assert_equal movie, actor.movie
  end
end
