class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :name
      t.string :api_key
      t.string :email
      t.string :provider
      t.string :uid

      t.timestamps
    end
  end
end