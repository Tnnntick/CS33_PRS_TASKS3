class CreateLibrary < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.string :name_l
      t.string :city_l
      t.string :country_l
      t.integer :age_l
      t.string :books_l
      t.string :cards_l

      t.timestamps
    end
  end
end
