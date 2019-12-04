class ChangeBpToBeDecimalInUsers < ActiveRecord::Migration[6.0]
  def change
  	change_column :users, :bp, :decimal
  	change_column :users, :hra, :decimal
  	change_column :users, :cca, :decimal
  	change_column :users, :sa, :decimal
  	change_column :users, :ta, :decimal
  	change_column :users, :reim, :decimal
  	change_column :users, :it, :decimal
  	change_column :users, :pt, :decimal
  	change_column :users, :lop, :decimal
  	change_column :users, :od, :decimal
  	change_column :users, :gsal, :decimal
  	change_column :users, :nol, :decimal
  	change_column :users, :ns, :decimal

  end
end
