class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.float :longitude
      t.float :lattitude
      t.string :name
      t.text :description
      t.string :address

      t.timestamps
    end
  end
end
