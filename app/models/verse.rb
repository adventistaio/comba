class Verse < ApplicationRecord
  belongs_to :chapter
  belongs_to :book
  has_one :verse_commentary

  has_rich_text :comment

  default_scope { order(number: :asc) }

  def self.random
    self.find_by('id = ?', rand(Verse.count))
  end

  def next
    Verse.where('id > ? and chapter_id = ?', id, chapter_id).first
  end

  def prev
    Verse.where('id < ? and chapter_id = ?', id, chapter_id).last
  end

  def cite
    "#{book&.name} #{chapter&.number}:#{number}"
  end
end
