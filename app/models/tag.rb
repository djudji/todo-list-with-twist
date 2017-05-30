class Tag < ApplicationRecord
  has_and_belongs_to_many :tasks
  validates :name, presence: true, length: { minimum: 4 }
end
