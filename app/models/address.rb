class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true, optional: true

  validates :state, length: {maximum: 2}
  validates :street, :city, :state, :zip, presence: true
end
