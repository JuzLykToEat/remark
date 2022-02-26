require 'csv'

movies_table = CSV.parse(File.read('./test[3]/movies.csv'), headers: true)
reviews_table = CSV.parse(File.read('./test[3]/reviews.csv'), headers: true)

movies_table.each do |movie_data|
  movie = Movie.where(name: movie_data['Movie'],
                      description: movie_data['Description'],
                      year: movie_data['Year'],
                      director: movie_data['Director']).first_or_create

  filming_location = Actor.where(movie_id: movie.id,
                                 name: movie_data['Actor'],
                                 filming_location: movie_data['Filming location'],
                                 country: movie_data['Country']).first_or_create
end

reviews_table.each do |review_data|
  movie = Movie.find_by(name: review_data['Movie'])

  review = Review.where(movie_id: movie.id,
                        user: review_data['User'],
                        stars: review_data['Stars'],
                        review: review_data['Review']).first_or_create
end
