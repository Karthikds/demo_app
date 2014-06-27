class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :writer
      t.text :reviews
      t.references :book
      t.timestamps
    end
    add_index :reviews, :book_id
  end
end
