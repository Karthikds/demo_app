class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
	  t.column :name, :string
	  t.column :age, :integer
	  t.timestamps
    end
  end
end