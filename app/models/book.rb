class Book < ApplicationRecord
  belongs_to :section
  belongs_to :category
end
