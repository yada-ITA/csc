class AddColumusToInquiries < ActiveRecord::Migration
  def change
    add_column :inquiries, :deleted_at, :datetime
  end
end
