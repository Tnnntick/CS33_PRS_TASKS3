class AddReferencesBooksToLibraries < ActiveRecord::Migration[7.0]
  def change
    add_reference :books,  :library ,index: true
  end
end
