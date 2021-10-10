class Chapter < ApplicationRecord
  belongs_to :book
  has_many :verses

  default_scope { order(number: :asc) }

  def next
    Chapter.where('id > ? and book_id = ?', id, book_id).first
  end

  def prev
    Chapter.where('id < ? and book_id = ?', id, book_id).last
  end
end
