class Verse < ApplicationRecord
  belongs_to :chapter
  belongs_to :book
  has_one :verse_commentary
end
