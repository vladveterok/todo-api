class Task < ApplicationRecord
  belongs_to :project
  attr_accessor :id, :name, :position, :deadline, :done, :created_at, :updated_at

  validates :done, inclusion: { in: [true, false] }
end
