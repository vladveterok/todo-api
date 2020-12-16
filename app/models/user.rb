class User < ApplicationRecord
  validates :email, presence: true, length: { in: Constants::NAME_LENGTH },
                    format: { with: Constants::NAME_FORMAT }
  validates :password_digest, presence: true, format: { with: Constants::PASSWORD_FORMAT }
end
