class CreateDictionaries < ActiveRecord::Migration[7.2]
  def change
    create_table :dictionaries do |t|
      t.string :word
      t.text :meaning

      t.timestamps
    end
  end
end
