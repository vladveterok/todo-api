RSpec.describe 'Users signin API', type: :request do
  include_context 'with user params'

  describe 'POST #create' do
    before { post '/signup', params: user_signup_params }

    it 'returns http success' do
      post '/signin', params: user_params
      expect(response).to be_successful
      expect(json.keys).to eq ['csrf']
      expect(response.cookies[JWTSessions.access_cookie]).to be_present
    end

    it 'returns unauthorized for invalid params' do
      post '/signin', params: { email: email, password: 'incorrect' }
      expect(response).to have_http_status(:unauthorized)
    end
  end

  describe 'logout DELETE #destroy' do
    context 'with failure' do
      it 'returns unauthorized http status' do
        delete '/signin'
        expect(response).to have_http_status(:unauthorized)
      end
    end

    context 'with success' do
      let(:user) { create(:user) }
      let(:headers) { valid_headers }

      before do
        delete '/signin', params: {}, headers: headers
      end

      it 'returns http success with valid tokens' do
        expect(response).to be_successful
      end
    end
  end
end
