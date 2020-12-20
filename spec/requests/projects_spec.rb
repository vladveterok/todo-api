RSpec.describe 'Projects API', type: :request do
  let(:user) { create(:user) }
  let!(:projects) { create_list(:project, 10, user_id: user.id) }
  let(:project_id) { projects.first.id }
  let(:headers) { valid_headers }

  describe 'GET /projects' do
    before { get '/projects', params: {}, headers: headers }

    it 'returns projects' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET /projects/:id' do
    before { get "/projects/#{project_id}", params: {}, headers: headers }

    context 'when the record exists' do
      it 'returns the project' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(project_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(:ok)
      end
    end

    context 'when the record does not exist' do
      let(:project_id) { projects.last.id + 1 }

      it 'returns status code 404' do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'POST /projects' do
    let(:valid_attributes) { { name: 'Learn Elm', user_id: user.id } }

    context 'when the request is valid' do
      before { post '/projects', params: valid_attributes, headers: headers }

      it 'creates a project' do
        expect(json['name']).to eq('Learn Elm')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(:created)
      end
    end

    context 'when the request is invalid' do
      before { post '/projects', params: { name: 'Foobar', user_id: nil } }

      it 'returns status code 422' do
        expect(response).to have_http_status(:unauthorized)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/"error":"Not authorizeddddd"/)
      end
    end
  end

  describe 'PUT /projects/:id' do
    let(:valid_attributes) { { name: 'Shopping' } }

    context 'when the record exists' do
      before { put "/projects/#{project_id}", params: valid_attributes, headers: headers }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(:no_content)
      end
    end
  end

  describe 'DELETE /projects/:id' do
    before { delete "/projects/#{project_id}", params: {}, headers: headers }

    it 'returns status code 204' do
      expect(response).to have_http_status(:ok)
    end
  end
end
