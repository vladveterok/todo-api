class SigninController < ApplicationController
  before_action :authorize_access_request!, only: %i[destroy]

  def create
    user = User.find_by!(email: params[:email])
    return not_authorized unless user.authenticate(params[:password])

    tokens = SetupTokensService.new(user: user, response: response).call
    render json: { csrf: tokens[:csrf] }
  end

  def destroy
    session = JWTSessions::Session.new(payload: payload)
    session.flush_by_access_payload
    render json: :ok
  end

  private

  def not_found
    render json: { error: I18n.t('errors.not_found') },
           status: :not_found
  end
end
