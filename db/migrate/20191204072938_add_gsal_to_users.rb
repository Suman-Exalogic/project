class AddGsalToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users,:bp,:decimal
  	add_column :users,:hra,:decimal
  	add_column :users,:cca,:decimal
  	add_column :users,:sa,:decimal
  	add_column :users,:ta,:decimal
  	add_column :users,:reim,:decimal
  	add_column :users,:it,:decimal
  	add_column :users,:pt,:decimal
  	add_column :users,:lop,:decimal
  	add_column :users,:od,:decimal
	add_column :users,:gsal,:decimal
  	add_column :users,:nol,:decimal
  	add_column :users,:ns,:decimal 
  end
end
