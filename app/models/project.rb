class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates :created_by, presence: true
end
