module Constants
  NAME_LENGTH = (3..50).freeze
  NAME_FORMAT = /\A[A-Za-z\s]+\z/.freeze

  PASSWORD_MIN_LENGTH = 8
  PASSWORD_FORMAT = /\A.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).*\z/.freeze
end
