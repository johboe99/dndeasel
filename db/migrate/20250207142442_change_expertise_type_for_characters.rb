class ChangeExpertiseTypeForCharacters < ActiveRecord::Migration[7.1]
  def change
    remove_column :characters, :expertise2
    remove_column :characters, :expertise1
    add_column :characters, :expertise, :text, array: true, default: []
  end
end
