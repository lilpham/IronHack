class AddFavoritesToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites
  end
end
