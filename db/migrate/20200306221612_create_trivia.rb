class CreateTrivia < ActiveRecord::Migration[6.0]
  def change
    create_table :trivia do |t|
      t.text :question
      t.text :options, array: true
      t.string :answer
      t.string :media

      t.timestamps
    end
  end
end
