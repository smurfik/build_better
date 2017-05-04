class Project < ApplicationRecord
  belongs_to :company
  has_many :projects_users
  has_many :users, through: :projects_users
  has_one :address, as: :addressable, dependent: :destroy

  validates :name, :description, presence: true
  validates :name, uniqueness: true

  accepts_nested_attributes_for :address
end
