class Organization < ApplicationRecord
  validates :ein, presence: true
  validates :charityName, presence: true
  validates :accepted_categories, presence: true
  has_and_belongs_to_many :categories
end
