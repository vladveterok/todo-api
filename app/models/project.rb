class Project < ApplicationRecord
  validates :created_by, presence: true
end
