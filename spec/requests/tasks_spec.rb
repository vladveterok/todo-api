RSpec.describe 'Tasks API', type: :request do
  let(:user) { create(:user) }
  let(:project) { create(:project, user_id: user.id) }
  let!(:tasks) { create_list(:task, 20, project_id: project.id) }
  let(:project_id) { project.id }
  let(:id) { tasks.first.id }
  let(:headers) { valid_headers }

  # Test suite for GET /projects/:project_id/tasks
  describe 'GET /projects/:project_id/tasks' do
    before { get "/api/projects/#{project_id}/tasks", params: {}, headers: headers }

    context 'when project exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(:ok)
      end

      it 'returns all project tasks' do
        expect(json.size).to eq(20)
      end
    end

    context 'when project does not exist' do
      let(:project_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  # Test suite for GET /projects/:project_id/tasks/:id
  # describe 'GET /projects/:project_id/tasks/:id' do
  #  before { get "/api/projects/#{project_id}/tasks/#{id}", params: {}, headers: headers }

  #  context 'when project task exists' do
  #    it 'returns status code 200' do
  #      expect(response).to have_http_status(:ok)
  #    end

  #    it 'returns the task' do
  #      expect(json['id']).to eq(id)
  #    end
  #  end

  #  context 'when project task does not exist' do
  #    let(:id) { 0 }

  #    it 'returns status code 404' do
  #      expect(response).to have_http_status(:not_found)
  #    end
  #  end
  # end

  # Test suite for PUT /projects/:project_id/tasks
  describe 'POST /projects/:project_id/tasks' do
    let(:valid_attributes) { { name: 'Visit Narnia', done: false } }

    context 'when request attributes are valid' do
      before { post "/api/projects/#{project_id}/tasks", params: valid_attributes, headers: headers }

      it 'returns status code 201' do
        expect(response).to have_http_status(:created)
      end
    end

    context 'when an invalid request' do
      before { post "/api/projects/#{project_id}/tasks", params: {}, headers: headers }

      it 'returns status code 422' do
        # expect(response).to have_http_status(422)
        skip
      end
    end
  end

  # Test suite for PUT /projects/:project_id/tasks/:id
  describe 'PUT /projects/:project_id/tasks/:id' do
    let(:valid_attributes) { { name: 'Mozart' } }

    before { put "/api/projects/#{project_id}/tasks/#{id}", params: valid_attributes, headers: headers }

    context 'when task exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(:no_content)
      end

      it 'updates the task' do
        updated_task = Task.find(id)
        expect(updated_task.name).to match(/Mozart/)
      end
    end

    context 'when the task does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  # Test suite for DELETE /projects/:id
  describe 'DELETE /projects/:id' do
    before { delete "/api/projects/#{project_id}/tasks/#{id}", params: {}, headers: headers }

    it 'returns status code 204' do
      expect(response).to have_http_status(:no_content)
    end
  end
end
