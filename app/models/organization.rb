class Organization < ApplicationRecord
  validates :ein, presence: true
  validates :charityName, presence: true
  validates :accepted_categories, presence: true
end
