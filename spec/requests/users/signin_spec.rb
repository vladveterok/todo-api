RSpec.describe 'Users signin API', type: :request do
  describe 'POST #create' do
    let(:password) { 'password' }
    let(:email) { 'test@test.test' }
    let(:user_signup_params) { { email: email, password: password, password_confirmation: password } }
    let(:user_params) { { email: email, password: password } }

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
end
