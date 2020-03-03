class User < ApplicationRecord
  validates :first_name, :last_name, :phone_number, :password, :email, presence: true
end
