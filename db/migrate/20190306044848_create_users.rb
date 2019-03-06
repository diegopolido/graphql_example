class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
      t.references :country, foreign_key: true
      t.boolean :is_admin

      t.timestamps
    end
  end
end
