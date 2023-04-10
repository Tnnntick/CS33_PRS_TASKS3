class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name_u
      t.string :surname_u
      t.integer :age_u

      t.timestamps
    end
  end
end
