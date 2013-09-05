class AddCtantomIdToInquiry < ActiveRecord::Migration
  def change
    add_column :inquiries, :ctantom_id, :integer
  end
end
