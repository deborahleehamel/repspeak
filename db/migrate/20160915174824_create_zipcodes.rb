class CreateZipcodes < ActiveRecord::Migration[5.0]
  def change
    create_table :zipcodes do |t|
      t.string :state
      t.integer :district

      t.timestamps
    end
  end
end
