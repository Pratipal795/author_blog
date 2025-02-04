class Author < ApplicationRecord
  has_many :blogs, dependent: :destroy
  validates :name, :email, presence: true
end
