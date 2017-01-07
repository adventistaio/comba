class Verse < ApplicationRecord
  belongs_to :chapter
  belongs_to :book
  has_one :verse_commentary

  def next
    Verse.where('id > ? and chapter_id = ?', id, chapter_id).first
  end

  def prev
    Verse.where('id < ? and chapter_id = ?', id, chapter_id).last
  end
end
