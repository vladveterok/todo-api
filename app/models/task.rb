class Task < ApplicationRecord
  belongs_to :project

  validates :done, inclusion: { in: [true, false] }
end
