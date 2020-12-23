RSpec.describe 'Users signup API', type: :request do
  describe 'POST #create' do
    let(:user_params) { { email: 'test@email.com', password: '1Password', password_confirmation: '1Password' } }

    context 'when params are valid' do
      it 'returns http success' do
        post '/signup', params: user_params
        expect(response).to be_successful
        expect(json.keys).to eq ['message']
        expect(response.cookies[JWTSessions.access_cookie]).to be_present
      end

      it 'creates a new user' do
        expect do
          post '/signup', params: user_params
        end.to change(User, :count).by(1)
      end
    end

    context 'when password is invalid' do
      let(:user_params) { { email: 'test@email.com', password: 'password', password_confirmation: 'password' } }

      before { post '/signup', params: user_params }

      it 'returns Unprocessable Entity' do
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'does not create a new user' do
        expect(User.count).to eq 0
      end

      it 'returns invalid password error' do
        expect(json['errors']).to include(I18n.t('activerecord.errors.models.user.attributes.password.invalid'))
      end
    end

    context 'when passwod_confirmation is invalid' do
      let(:user_params) { { email: 'test@email.com', password: '1Password', password_confirmation: 'P1assword' } }
      let(:error) { I18n.t('activerecord.errors.models.user.attributes.password_confirmation.confirmation') }

      before { post '/signup', params: user_params }

      it 'returns Unprocessable Entity' do
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'does not create a new user' do
        expect(User.count).to eq 0
      end

      it 'returns invalid password_confirmation error' do
        expect(json['errors']).to include(error)
      end
    end

    context 'when email is wrong' do
      let(:user_params) { { email: 'testemail.com', password: '1Password', password_confirmation: '1Password' } }
      let(:error) { I18n.t('activerecord.errors.models.user.attributes.email.invalid') }

      before { post '/signup', params: user_params }

      it 'returns Unprocessable Entity' do
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'does not create a new user' do
        expect(User.count).to eq 0
      end

      it 'returns wrong email format error' do
        expect(json['errors']).to include(error)
      end
    end

    context 'when email is registered' do
      let(:error) { I18n.t('activerecord.errors.messages.taken') }

      before do
        post '/signup', params: user_params
        post '/signup', params: user_params
      end

      it 'returns Unprocessable Entity' do
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'returns email taken error' do
        expect(json['errors']).to include(error)
      end
    end
  end
end
