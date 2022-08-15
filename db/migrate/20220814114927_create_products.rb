class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :list_of_categories
      t.string :subcategories
      t.string :location

      t.timestamps
    end
  end
end
