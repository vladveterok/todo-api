class RefreshController < ApplicationController
  before_action :authorize_refresh_by_access_request!

  def create
    tokens = SetupTokensService.new(claimless_payload: claimless_payload,
                                    response: response,
                                    refresh: true).call
    render json: { csrf: tokens[:csrf] }
  end
end
