class CreateWonder < ActiveRecord::Migration[6.1]
  def change
    create_table :wonders do |t|
      t.string :title
      t.integer :year_discovered
      t.string :description
      t.integer :wonder_id

      t.timestamps
    end
  end
end
