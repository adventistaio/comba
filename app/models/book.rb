class Book < ApplicationRecord
  belongs_to :section
  belongs_to :category
  has_one :book_commentary
  has_many :chapters

  accepts_nested_attributes_for :book_commentary
end
