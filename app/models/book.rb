class Book < ApplicationRecord
  belongs_to :section
  belongs_to :category
  has_one :book_commentary
  has_many :chapters

  accepts_nested_attributes_for :book_commentary

  def next
    Book.where("id > ?", id).first
  end

  def prev
    Book.where("id < ?", id).last
  end
end
