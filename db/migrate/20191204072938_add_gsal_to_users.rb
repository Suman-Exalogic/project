class AddGsalToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users,:bp,:decimal, :default=>0
  	add_column :users,:hra,:decimal, :default=>0
  	add_column :users,:cca,:decimal, :default=>0
  	add_column :users,:sa,:decimal, :default=>0
  	add_column :users,:ta,:decimal, :default=>0
  	add_column :users,:reim,:decimal, :default=>0
  	add_column :users,:it,:decimal, :default=>0
  	add_column :users,:pt,:decimal, :default=>0
  	add_column :users,:lop,:decimal, :default=>0
  	add_column :users,:od,:decimal, :default=>0
	 add_column :users,:gsal,:decimal, :default=>0
  	add_column :users,:nol,:decimal, :default=>0
  	add_column :users,:ns,:decimal, :default=>0
  end
end
