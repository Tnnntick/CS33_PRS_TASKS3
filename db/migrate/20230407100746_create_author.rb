class CreateAuthor < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name_a
      t.string :surname_a


      t.timestamps
    end
  end

  def say
    puts("sddddddd")
  end

  end
end
