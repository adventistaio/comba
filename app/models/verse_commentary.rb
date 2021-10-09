class VerseCommentary < ApplicationRecord
  belongs_to :verse
  has_rich_text :comment
end
