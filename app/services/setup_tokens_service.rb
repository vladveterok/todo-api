class SetupTokensService
  def initialize(response:, user: nil, refresh: false, claimless_payload: nil)
    @response = response
    @user = user
    @refresh = refresh
    @claimless_payload = claimless_payload
  end

  def call
    @refresh ? set_refresh_tokens : set_tokens
    set_response
    @session
  end

  private

  def set_refresh_tokens
    session = JWTSessions::Session.new(payload: @claimless_payload, refresh_by_access_allowed: true)
    @session = session.refresh_by_access_payload do
      raise JWTSessions::Errors::Unauthorized, I18n.t('errors.unauthorized')
    end
  end

  def set_tokens
    @session = JWTSessions::Session.new(payload: payload, refresh_by_access_allowed: true).login
  end

  def payload
    { user_id: @user.id }
  end

  def set_response
    @response.set_cookie(JWTSessions.access_cookie,
                         value: @session[:access],
                         httponly: true,
                         secure: Rails.env.production?)
  end
end
