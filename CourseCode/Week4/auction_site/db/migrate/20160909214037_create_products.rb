class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.datetime :deadline
      t.references :products, foreign_key: true
    end
  end
end
