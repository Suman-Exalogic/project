class ChangeEmpidSuman < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :empid, :string
  end
end
