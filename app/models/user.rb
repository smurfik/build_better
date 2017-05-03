class User < ApplicationRecord
  has_secure_password

  belongs_to :company
  has_many :projects_users
  has_many :projects, through: :projects_users
  has_one :address, as: :addressable
end
