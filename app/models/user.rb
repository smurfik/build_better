class User < ApplicationRecord
  has_secure_password

  belongs_to :company
  has_many :projects_users
  has_many :projects, through: :projects_users

  validates :username, :email, presence: true, uniqueness: true
  validates :email, format: { with: /\w@\w/ }
end
