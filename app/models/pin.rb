class Pin < ApplicationRecord
  acts_as_votable
  validates :image, presence: true

  belongs_to :user
  belongs_to :board

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
