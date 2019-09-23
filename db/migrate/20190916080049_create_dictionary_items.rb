class CreateDictionaryItems < ActiveRecord::Migration[5.2]
  def change
    create_table :dictionary_items do |t|
      t.string :value
      t.string :type

      t.timestamps
    end
  end
end
