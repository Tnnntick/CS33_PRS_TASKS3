class AddAgeAToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :age_a, :string
  end
end
