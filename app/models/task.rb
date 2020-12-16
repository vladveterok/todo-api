class Task < ApplicationRecord
  belongs_to :project

  validates :done, presence: true
end
