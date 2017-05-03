class Project < ApplicationRecord
  belongs_to :company
  has_many :projects_users
  has_many :users, through: :projects_users
  has_one :address, as: :addressable
end
