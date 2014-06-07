class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :phone
      t.string :therapist
      t.string :therapist_email
      t.integer :therapist_phone

      t.timestamps
    end
  end
end
