class User < ActiveRecord::Base
  has_many :user_artists
  has_many :artists, through: :user_artists
  has_many :artist_genres
  has_many :genres, through: :artist_genres
end
