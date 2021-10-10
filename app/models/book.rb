class Book < ApplicationRecord
  belongs_to :section
  belongs_to :category
  has_one :book_commentary
  has_many :chapters

  has_rich_text :comment
  has_one_attached :descriptive_image do |attachable|
    attachable.variant :large, resize: "900x900"
    attachable.variant :thumb, resize: "150x150"
  end

  accepts_nested_attributes_for :book_commentary

  default_scope { order(id: :asc) }

  def next
    Book.where("id > ?", id).first
  end

  def prev
    Book.where("id < ?", id).last
  end
end
