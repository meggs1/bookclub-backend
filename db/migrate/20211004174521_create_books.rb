class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.references :user, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :image
      t.references :genre, null: false, foreign_key: true
      t.float :rating
      t.string :publisher

      t.timestamps
    end
  end
end
