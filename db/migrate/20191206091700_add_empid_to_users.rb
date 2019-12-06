class AddEmpidToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :empid, :integer
  end
end
