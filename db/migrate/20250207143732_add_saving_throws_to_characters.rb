class AddSavingThrowsToCharacters < ActiveRecord::Migration[7.1]
  def change
    add_column :characters, :saving_throws, :text, array: true, default: []
  end
end
