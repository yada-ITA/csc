class AddColumnsToInquiries < ActiveRecord::Migration
  def change
    add_column :inquiries, :contact_id, :integer
  end
end
