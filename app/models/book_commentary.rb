class BookCommentary < ApplicationRecord
  belongs_to :book
  has_rich_text :comment
end
