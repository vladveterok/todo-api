class ApplicationController < ActionController::API
  include JWTSessions::RailsAuthorization
  rescue_from JWTSessions::Errors::Unauthorized, with: :not_authorized
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :record_invaild

  private

  def current_user
    @current_user ||= User.find(payload['user_id'])
  end

  def not_authorized
    render json: { error: I18n.t('errors.not_authorized') }, status: :unauthorized
  end

  def record_not_found(exception)
    render json: { error: exception.message }.to_json, status: :not_found
  end

  def record_invaild(exception)
    render json: { error: exception.message }.to_json, status: :unprocessable_entity
  end
end
