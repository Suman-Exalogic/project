class ChangeBaccToBeString < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :bacc, :string
  end
end
