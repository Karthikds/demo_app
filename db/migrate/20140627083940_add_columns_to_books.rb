class AddColumnsToBooks < ActiveRecord::Migration
  def change
  	add_column :books, :page_count, :string
  	add_column :books, :publisher_id, :integer
  end
end
