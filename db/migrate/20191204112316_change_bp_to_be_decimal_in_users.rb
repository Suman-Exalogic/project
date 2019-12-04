class ChangeBpToBeDecimalInUsers < ActiveRecord::Migration[6.0]
  def change
  	change_column :users, :bp, :decimal, :default=>0
  	change_column :users, :hra, :decimal, :default=>0
  	change_column :users, :cca, :decimal, :default=>0
  	change_column :users, :sa, :decimal, :default=>0
  	change_column :users, :ta, :decimal, :default=>0
  	change_column :users, :reim, :decimal, :default=>0
  	change_column :users, :it, :decimal, :default=>0
  	change_column :users, :pt, :decimal, :default=>0
  	change_column :users, :lop, :decimal, :default=>0
  	change_column :users, :od, :decimal, :default=>0
  	change_column :users, :gsal, :decimal, :default=>0
  	change_column :users, :nol, :decimal, :default=>0
  	change_column :users, :ns, :decimal, :default=>0

  end
end
