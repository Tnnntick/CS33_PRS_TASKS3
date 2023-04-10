class AddReferencesGanresToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :ganres,  :book ,index: true
  end

end
