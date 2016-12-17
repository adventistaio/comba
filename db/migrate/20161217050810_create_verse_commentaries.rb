class CreateVerseCommentaries < ActiveRecord::Migration[5.0]
  def change
    create_table :verse_commentaries do |t|
      t.text :commentary
      t.references :verse, foreign_key: true

      t.timestamps
    end
  end
end
