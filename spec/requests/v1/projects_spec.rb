RSpec.describe 'Projects API', type: :request do
  include Docs::V1::Projects::Api

  include_context 'with headers'
  let(:user) { create(:user) }
  let!(:projects) { create_list(:project, 10, user_id: user.id) }
  let(:project_id) { projects.first.id }

  describe 'GET /projects' do
    include Docs::V1::Projects::Index
    before { get '/api/projects', params: {}, headers: headers }

    it 'returns projects', :dox do
      expect(json).not_to be_empty
      expect(json['data'].size).to eq(projects.size)
    end

    it 'returns status code 200', :dox do
      expect(response).to have_http_status(:ok)
    end

    context 'when 401' do
      let(:headers) { invalid_headers }

      it 'returns status code 401', :dox do
        expect(response).to have_http_status(:unauthorized)
      end
    end
  end

  describe 'POST /projects' do
    include Docs::V1::Projects::Create

    let(:attributes) { { name: 'Learn Elm', user_id: user.id } }

    before { post '/api/projects', params: attributes, headers: headers }

    context 'when the request is valid' do
      it 'creates a project', :dox do
        expect(json.dig('data', 'attributes', 'name')).to eq(attributes[:name])
      end

      it 'returns status code 201', :dox do
        expect(response).to have_http_status(:created)
      end
    end

    context 'when 401' do
      let(:headers) { invalid_headers }

      it 'returns status code 401', :dox do
        expect(response).to have_http_status(:unauthorized)
      end
    end
  end

  describe 'PUT /projects/:id' do
    include Docs::V1::Projects::Update

    let(:attributes) { { name: 'Shopping' } }

    before { put "/api/projects/#{project_id}", params: attributes, headers: headers }

    context 'when the record exists' do
      it 'updates the record', :dox do
        expect(response.body).to be_empty
      end

      it 'returns status code 204', :dox do
        expect(response).to have_http_status(:no_content)
      end
    end

    context 'when 401' do
      let(:headers) { invalid_headers }

      it 'returns status code 401', :dox do
        expect(response).to have_http_status(:unauthorized)
      end
    end

    context 'when 404' do
      let(:project_id) { 0 }

      it 'returns status code 404', :dox do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'DELETE /projects/:id' do
    include Docs::V1::Projects::Destroy

    before { delete "/api/projects/#{project_id}", params: {}, headers: headers }

    it 'returns status code 204', :dox do
      expect(response).to have_http_status(:ok)
    end

    context 'when 401' do
      let(:headers) { invalid_headers }

      it 'returns status code 401', :dox do
        expect(response).to have_http_status(:unauthorized)
      end
    end

    context 'when 404' do
      let(:project_id) { 0 }

      it 'returns status code 404', :dox do
        expect(response).to have_http_status(:not_found)
      end
    end
  end
end