class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :last_name
      t.string :first_name
      t.string :city
      t.string :country
      t.string :primary_phone
      t.string :secondary_phone
      t.string :email

      t.timestamps
    end
  end
end
