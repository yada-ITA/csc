class AddUsernoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :userno, :string
    add_index :users, :userno, unique: true
  end
end
