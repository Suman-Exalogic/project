class AddGsalToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users,:gsal,:decimal
  	add_column :users,:nol,:decimal
  	add_column :users,:ns,:decimal 
  end
end
