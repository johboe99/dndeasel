class AddDetailsToCharacter < ActiveRecord::Migration[7.1]
  def change
    add_column :characters, :race, :string
    add_column :characters, :alignment, :string
    add_column :characters, :background, :string
  end
end
