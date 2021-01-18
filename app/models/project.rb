class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :user

  validates :name, uniqueness: { scope: :user_id,
                                 message: I18n.t('errors.projects.name_taken') },
                   presence: true

  scope :with_tasks, -> { includes([:tasks]) }
end
