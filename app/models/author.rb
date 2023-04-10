class Author < ApplicationRecord
  belongs_to :book




  # include ActiveModel::Validations
  # validates: name_a, presence:true
end
