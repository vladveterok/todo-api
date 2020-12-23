RSpec.describe 'Users signup API', type: :request do
  describe 'POST #create' do
    let(:user_params) { { email: 'test@email.com', password: 'password', password_confirmation: 'password' } }

    it 'returns http success' do
      post '/signup', params: user_params
      expect(response).to be_successful
      # expect(json.keys).to eq ['csrf']
      expect(json.keys).to eq ['message']
      expect(response.cookies[JWTSessions.access_cookie]).to be_present
    end

    it 'creates a new user' do
      expect do
        post '/signup', params: user_params
      end.to change(User, :count).by(1)
    end
  end
end
