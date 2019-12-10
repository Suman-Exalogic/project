class AddMonthToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :month, :string
    add_column :users, :year, :integer

  end
end
