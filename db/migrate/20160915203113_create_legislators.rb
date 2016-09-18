class CreateLegislators < ActiveRecord::Migration[5.0]
  def change
    create_table :legislators do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :twitter_id
      t.string :role_type
      t.string :state

      t.timestamps
    end
  end
end
