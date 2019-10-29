class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :visit
      t.references :Physician, null: false, foreign_key: true
      t.references :Patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
