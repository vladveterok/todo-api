class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :user

  scope :with_tasks, -> { includes([:tasks]) }
end
