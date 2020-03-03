class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favourites, dependent: :destroy
  has_many :tv_shows, through: :favourites

  def favourite_show?(tv_show)
    tv_shows.include?(tv_show)
  end
end
