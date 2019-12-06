class AddBaccToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :bacc, :integer
  end
end
