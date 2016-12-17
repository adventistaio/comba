class CreateVerses < ActiveRecord::Migration[5.0]
  def change
    create_table :verses do |t|
      t.text :verse
      t.integer :number
      t.references :chapter, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
