class CreateCard < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :name_c
      t.integer :since_year

      t.timestamps
    end
  end
end
