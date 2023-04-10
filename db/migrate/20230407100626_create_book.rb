class CreateBook < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name_b
      t.string :author_b
      t.string :ganre_b

      t.timestamps
    end
  end
end
