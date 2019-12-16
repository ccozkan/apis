class CreateRadioStations < ActiveRecord::Migration[6.0]
  def change
    create_table :radio_stations do |t|
      t.string :name
      t.string :url
      t.string :genre
      t.string :country

      t.timestamps
    end
  end
end
