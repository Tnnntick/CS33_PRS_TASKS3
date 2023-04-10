class CreateGanre < ActiveRecord::Migration[7.0]
  def change
    create_table :ganres do |t|
      t.string :name_g
      t.string :fame

      t.timestamps
    end
  end
end
