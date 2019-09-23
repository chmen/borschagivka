class RenameTypeInDictionaries < ActiveRecord::Migration[5.2]
  def change
    rename_column :dictionary_items, :type, :dictionary_type
  end
end
