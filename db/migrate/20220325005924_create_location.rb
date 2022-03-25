class CreateLocation < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :country_name
      t.string :city_name
      t.string :continent
      t.integer :location_id

      t.timestamps
    end
  end
end
