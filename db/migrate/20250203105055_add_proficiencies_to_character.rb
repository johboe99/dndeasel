class AddProficienciesToCharacter < ActiveRecord::Migration[7.1]
  def change
    add_column :characters, :proficiency_bonus, :integer, default: 2
    add_column :characters, :expertise1, :string
    add_column :characters, :expertise2, :string
  end
end
