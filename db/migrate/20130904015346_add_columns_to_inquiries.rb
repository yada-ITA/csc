class AddColumnsToInquiries < ActiveRecord::Migration
  def change
    add_column :inquiries, :utanto, :string
    add_column :inquiries, :ttanto, :string
    add_column :inquiries, :ctanto, :string
    add_column :inquiries, :jyokyo, :string
    add_column :inquiries, :youken, :string
    add_column :inquiries, :recontact, :string
    add_column :inquiries, :kinkyu, :string
    add_column :inquiries, :taiou, :string
    add_column :inquiries, :gotaiou, :string
    add_column :inquiries, :tmemo, :memo
  end
end
