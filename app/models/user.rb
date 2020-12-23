class User < ApplicationRecord
  has_secure_password

  has_many :projects, dependent: :destroy, inverse_of: :user

  validates :email,
            format: { with: URI::MailTo::EMAIL_REGEXP },
            presence: true,
            uniqueness: { case_sensitive: false }
  validates :password_digest, presence: true
  validates :password, presence: true, format: { with: Constants::PASSWORD_FORMAT }
end
