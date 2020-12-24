RSpec.describe 'Tasks API', type: :request do
  include_context 'with user, project, task, task_id'
  include_context 'with headers'
  let!(:tasks) { create_list(:task, 20, project_id: project.id) }
  let(:id) { tasks.first.id }

  describe 'GET /projects/:project_id/tasks' do
    before { get "/api/projects/#{project_id}/tasks", params: {}, headers: headers }

    context 'when project exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(:ok)
      end

      it 'returns all project tasks' do
        expect(json['data'].size).to eq(tasks.size)
      end
    end

    context 'when 401' do
      let(:headers) { invalid_headers }

      it 'returns status code 401' do
        expect(response).to have_http_status(:unauthorized)
      end
    end

    context 'when 403' do
      let(:another_user) { create(:user) }
      let(:project) { create(:project, user_id: another_user.id) }

      it 'returns status code 403' do
        expect(status).to eq(403)
      end
    end

    context 'when 404' do
      let(:project_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'POST /projects/:project_id/tasks' do
    let(:attributes) { { name: 'Visit Narnia', done: false } }

    before { post "/api/projects/#{project_id}/tasks", params: attributes, headers: headers }

    context 'when request attributes are valid' do
      it 'returns status code 201' do
        expect(response).to have_http_status(:created)
      end
    end

    context 'when 401' do
      let(:headers) { invalid_headers }

      it 'returns status code 401' do
        expect(response).to have_http_status(:unauthorized)
      end
    end

    context 'when 403' do
      let(:another_user) { create(:user) }
      let(:project) { create(:project, user_id: another_user.id) }

      it 'returns status code 403' do
        expect(status).to eq(403)
      end
    end

    context 'when 404' do
      let(:project_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

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

    context 'when 401' do
      let(:headers) { invalid_headers }

      it 'returns status code 401' do
        expect(response).to have_http_status(:unauthorized)
      end
    end

    context 'when 403' do
      let(:another_user) { create(:user) }
      let(:project) { create(:project, user_id: another_user.id) }

      it 'returns status code 403' do
        expect(status).to eq(403)
      end
    end

    context 'when 404' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'DELETE /projects/:project_id/tasks/:id' do
    before { delete "/api/projects/#{project_id}/tasks/#{id}", params: {}, headers: headers }

    it 'returns status code 204' do
      expect(response).to have_http_status(:no_content)
    end

    context 'when 401' do
      let(:headers) { invalid_headers }

      it 'returns status code 401' do
        expect(response).to have_http_status(:unauthorized)
      end
    end

    context 'when 403' do
      let(:another_user) { create(:user) }
      let(:project) { create(:project, user_id: another_user.id) }

      it 'returns status code 403' do
        expect(status).to eq(403)
      end
    end

    context 'when 404' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'POST /projects/:id/tasks/:id/toggle_status' do
    before do
      post "/api/projects/#{project_id}/tasks/#{id}/toggle_status", params: {}, headers: headers
    end

    it do
      expect(response).to have_http_status(:ok)
      expect(Task.first.done).to be true
    end
  end

  describe 'PATCH /projects/:id/tasks/sort' do
    before { patch "/api/projects/#{project_id}/tasks/sort", params: {}, headers: headers }

    it 'returns status code 200' do
      expect(response).to have_http_status(:ok)
    end
  end
end
