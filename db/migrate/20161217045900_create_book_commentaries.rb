class CreateBookCommentaries < ActiveRecord::Migration[5.0]
  def change
    create_table :book_commentaries do |t|
      t.text :commentary
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
