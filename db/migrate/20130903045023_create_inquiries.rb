class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.datetime :receeptiondate
      t.string :contact
      t.string :client
      t.text :memo

      t.timestamps
    end
  end
end
