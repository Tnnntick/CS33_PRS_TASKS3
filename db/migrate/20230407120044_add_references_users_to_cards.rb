class AddReferencesUsersToCards < ActiveRecord::Migration[7.0]
  def change
    add_reference :users,  :card ,index: true
  end
end
