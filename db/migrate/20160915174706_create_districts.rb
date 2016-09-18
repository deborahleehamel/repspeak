class CreateDistricts < ActiveRecord::Migration[5.0]
  def change
    create_table :districts do |t|
      t.integer :district_number
      t.string :state
      t.integer :zip
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
