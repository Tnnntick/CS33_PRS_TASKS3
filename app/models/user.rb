class User < ApplicationRecord
   belongs_to :card
  # include ActiveModel::Validations
  # validates: name_u, presence:true
end
