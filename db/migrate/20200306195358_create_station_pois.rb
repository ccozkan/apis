class CreateStationPois < ActiveRecord::Migration[6.0]
  def change
    create_table :station_pois do |t|
      t.string :title
      t.decimal :lat
      t.decimal :lon
      t.decimal :dist
      t.string :url
      t.integer :page_id
      t.string :tag
      t.text :summary
      t.references :station, null: false, foreign_key: true

      t.timestamps
    end
  end
end
