class AddColumnsToInqueries < ActiveRecord::Migration
  def change
    add_column :inqueries, :deadline, :datetime
    add_column :inqueries, :title, :string
  end
end
