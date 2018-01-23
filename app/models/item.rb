class Item < ApplicationRecord
  belongs_to :user

  validates :name, length: { minimum: 3 }, presence: true
end
