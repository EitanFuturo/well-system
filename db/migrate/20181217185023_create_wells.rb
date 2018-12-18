class CreateWells < ActiveRecord::Migration
  def change
    create_table :wells do |t|
      t.string :name
      t.decimal :depth
      t.references :area, index: true, foreign_key: true
      t.references :field, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
