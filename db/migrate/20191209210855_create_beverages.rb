class CreateBeverages < ActiveRecord::Migration[6.0]
  def change
    create_table :beverages do |t|
      t.string :name
      t.string :glass
      t.string :category
      t.string :garnish
      t.text :preparation
      t.text :ingredients

      t.timestamps
    end
  end
end
