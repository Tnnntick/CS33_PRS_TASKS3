class AddReferencesAuthorsToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :authors,  :book ,index: true
  end
end
