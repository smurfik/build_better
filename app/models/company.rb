class Company < ApplicationRecord
  has_many :users
  has_many :projects
  has_one :address, as: :addressable, dependent: :destroy
  validates :name, uniqueness: true
end
