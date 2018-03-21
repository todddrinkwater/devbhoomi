class CreateAdministrators < ActiveRecord::Migration[5.1]
  def change
    create_table :administrators do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_name
      t.string :suburb
      t.string :city
      t.string :country
      t.string :postal_code
      t.string :mobile_number
      t.string :landline_number
      t.date   :date_of_birth

      t.timestamps
    end
  end
end
