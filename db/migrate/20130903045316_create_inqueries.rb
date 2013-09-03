class CreateInqueries < ActiveRecord::Migration
  def change
    create_table :inqueries do |t|
      t.datetime :receptiondate
      t.string :contact
      t.string :client
      t.text :memo

      t.timestamps
    end
  end
end
