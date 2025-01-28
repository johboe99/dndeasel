class AddAliveBooleanToCharacter < ActiveRecord::Migration[7.1]
  def change
    add_column :characters, :alive, :boolean, default: true
  end
end
