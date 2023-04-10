class AddReferencesCardsToLibraries < ActiveRecord::Migration[7.0]
  def change
    add_reference :cards,  :library ,index: true
    add_reference :cards,  :library ,name_c: true
  end
end
