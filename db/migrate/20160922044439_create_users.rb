class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :screen_name
      t.string :uid
      t.string :token
      t.string :secret
      t.string :provider
      t.string :profile_image

      t.timestamps
    end
  end
end
