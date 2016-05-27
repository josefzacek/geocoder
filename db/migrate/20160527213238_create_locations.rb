class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :title
      t.string :address
      t.string :city
      t.string :country
      t.string :county
      t.string :postal_code

      t.timestamps null: false
    end
  end
end
