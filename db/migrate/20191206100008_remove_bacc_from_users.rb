class RemoveBaccFromUsers < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :bacc, :number
  end
end
