class SignupController < ApplicationController
  def create
    user = User.new(user_params)
    return render json: { errors: user.errors.full_messages.join(' ') }, status: :unprocessable_entity unless user.save

    SetupTokensService.new(user: user, response: response).call
    render json: { message: I18n.t('messages.auth.signup_success') }
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end
