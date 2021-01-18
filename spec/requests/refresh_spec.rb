RSpec.describe 'Users refresh API', type: :request do
  include Docs::Refresh::Api

  describe 'POST #create' do
    include Docs::Refresh::Create

    let(:user) { create(:user) }

    context 'when refresh success' do
      let(:headers) { expired_headers }

      it 'success', :dox do
        post '/refresh', params: {}, headers: headers

        expect(response).to be_successful
        expect(json.keys.sort).to eq ['csrf']
        expect(response.cookies[JWTSessions.access_cookie]).to be_present
      end
    end

    context 'when refresh with a failure' do
      let(:headers) { valid_headers }

      it 'returns status unauthorized', :dox do
        post '/refresh', params: {}, headers: headers
        expect(response).to have_http_status(:unauthorized)
      end
    end
  end
end
