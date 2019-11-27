class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.date :dob
      t.string :email
      t.string :mobile
      t.string :gender
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.integer :pincode
      t.string :blood
      t.string :ename
      t.string :econtact
      t.string :pskill
      t.string :sskill1
      t.string :sskill2
      t.string :role
      t.string :password_digest

      t.timestamps
    end
  end
end
