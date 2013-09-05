class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :code
      t.string :kana
      t.string :address
      t.string :tel
      t.string :fax

      t.timestamps
    end
  end
end
