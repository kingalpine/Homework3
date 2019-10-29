class CreateOfficeLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :office_locations do |t|
      t.string :street_address
      t.integer :zip_code
      t.string :phone
      t.references :Physician, null: false, foreign_key: true

      t.timestamps
    end
  end
end
