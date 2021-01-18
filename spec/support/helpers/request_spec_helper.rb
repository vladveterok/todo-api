module RequestSpecHelper
  def json
    JSON.parse(response.body)
  end

  def tokens(user_id)
    JWTSessions.access_exp_time = 3600
    payload = { user_id: user_id }
    session = JWTSessions::Session.new(payload: payload, refresh_by_access_allowed: true)
    session.login
  end

  def expired_tokens(user_id)
    JWTSessions.access_exp_time = 0
    payload = { user_id: user_id }
    session = JWTSessions::Session.new(payload: payload, refresh_by_access_allowed: true)
    session.login
  end

  def valid_headers
    {
      'Authorization' => "Bearer #{tokens(user.id)[:access]}",
      'Cookie' => "jwt_access=#{tokens(user.id)[:access]}"
    }
  end

  def invalid_headers
    {
      'Authorization' => nil,
      'Cookie' => nil
    }
  end

  def expired_headers
    {
      'Authorization' => "Bearer #{expired_tokens(user.id)[:access]}",
      'Cookie' => "jwt_access=#{expired_tokens(user.id)[:access]}"
    }
  end
end
