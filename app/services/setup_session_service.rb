class SetupSessionService
  # remove?
  attr_reader :tokens

  def initialize(user:, response:)
    @response = response
    @user = user
  end

  def call
    session = JWTSessions::Session.new(payload: payload, refresh_by_access_allowed: true)
    @tokens = session.login
    set_response
    @tokens
  end

  private

  def payload
    { user_id: @user.id }
  end

  def set_response
    @response.set_cookie(JWTSessions.access_cookie,
                         value: @tokens[:access],
                         httponly: true,
                         secure: Rails.env.production?)
  end
end
