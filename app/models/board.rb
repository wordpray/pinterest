class Board < ApplicationRecord
  validates :name, presence: true

  has_many :pins
  has_many :user_boards
  has_many :users,  through: :user_boards

end
