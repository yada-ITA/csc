class AddColumnsToInquiries < ActiveRecord::Migration
  def change
    add_column :inquiries, :deadline, :datetime
    add_column :inquiries, :title, :string
  end
end
