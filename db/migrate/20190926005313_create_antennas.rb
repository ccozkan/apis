class CreateAntennas < ActiveRecord::Migration[6.0]
  def change
    create_table :antennas do |t|
      t.string :city
      t.string :location
      t.string :band
      t.string :frequency
      t.string :tone
      t.string :sql
      t.integer :status
      t.string :date_updated

      t.timestamps
    end
  end
end
