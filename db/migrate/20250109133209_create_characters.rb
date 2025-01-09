class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|

      t.timestamps
      t.string :name
      t.string :classname
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :level
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
    end
  end
end
