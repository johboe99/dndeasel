class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|

      t.timestamps
      t.string :title
      t.integer :counter
      t.string :description
      t.references :user, null: false, foreign_key: true
    end
  end
end
