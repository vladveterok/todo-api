class User < ApplicationRecord
  has_secure_password

  has_many :projects, dependent: :destroy, inverse_of: :user

  validates :email, presence: true, length: { in: Constants::NAME_LENGTH }
  validates :password_digest, presence: true, format: { with: Constants::PASSWORD_FORMAT }
end
