class RemoveColumnFromPublisher < ActiveRecord::Migration
  def change
  	remove_column :publishers, :edition
  end
end
