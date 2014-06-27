class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :name
      t.integer :edition
      t.date :estd
      t.timestamps
    end
  end
end
