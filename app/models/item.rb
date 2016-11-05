class Item < ApplicationRecord
  validates :title, :description, presence: true

end
