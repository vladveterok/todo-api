RSpec.describe 'Tasks API', type: :request do
  include Docs::V1::Tasks::Api

  include_context 'with user, project, task, task_id'
  include_context 'with headers'
  let!(:tasks) { create_list(:task, 20, project_id: project.id) }
  let(:id) { tasks.first.id }

  describe 'GET /projects/:project_id/tasks' do
    include Docs::V1::Tasks::Index

    before { get "/api/projects/#{project_id}/tasks", params: {}, headers: headers }

    context 'when project exists' do
      it 'returns status code 200', :dox do
        expect(response).to have_http_status(:ok)
      end

      it 'returns all project tasks', :dox do
        expect(json['data'].size).to eq(tasks.size)
      end
    end

    context 'when 401' do
      let(:headers) { invalid_headers }

      it 'returns status code 401', :dox do
        expect(response).to have_http_status(:unauthorized)
      end
    end

    context 'when 403' do
      let(:another_user) { create(:user) }
      let(:project) { create(:project, user_id: another_user.id) }

      it 'returns status code 403', :dox do
        expect(status).to eq(403)
      end
    end

    context 'when 404' do
      let(:project_id) { 0 }

      it 'returns status code 404', :dox do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'POST /projects/:project_id/tasks' do
    include Docs::V1::Tasks::Create

    let(:attributes) { { name: 'Visit Narnia', done: false } }

    before { post "/api/projects/#{project_id}/tasks", params: attributes, headers: headers }

    context 'when request attributes are valid' do
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

    context 'when 403' do
      let(:another_user) { create(:user) }
      let(:project) { create(:project, user_id: another_user.id) }

      it 'returns status code 403', :dox do
        expect(status).to eq(403)
      end
    end

    context 'when 404' do
      let(:project_id) { 0 }

      it 'returns status code 404', :dox do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'PUT /projects/:project_id/tasks/:id' do
    include Docs::V1::Tasks::Update

    let(:valid_attributes) { { name: 'Mozart' } }

    before { put "/api/projects/#{project_id}/tasks/#{id}", params: valid_attributes, headers: headers }

    context 'when task exists' do
      it 'returns status code 204', :dox do
        expect(response).to have_http_status(:no_content)
      end

      it 'updates the task', :dox do
        updated_task = Task.find(id)
        expect(updated_task.name).to match(/Mozart/)
      end
    end

    context 'when 401' do
      let(:headers) { invalid_headers }

      it 'returns status code 401', :dox do
        expect(response).to have_http_status(:unauthorized)
      end
    end

    context 'when 403' do
      let(:another_user) { create(:user) }
      let(:project) { create(:project, user_id: another_user.id) }

      it 'returns status code 403', :dox do
        expect(status).to eq(403)
      end
    end

    context 'when 404' do
      let(:id) { 0 }

      it 'returns status code 404', :dox do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'DELETE /projects/:project_id/tasks/:id' do
    include Docs::V1::Tasks::Destroy
    before { delete "/api/projects/#{project_id}/tasks/#{id}", params: {}, headers: headers }

    it 'returns status code 204', :dox do
      expect(response).to have_http_status(:no_content)
    end

    context 'when 401' do
      let(:headers) { invalid_headers }

      it 'returns status code 401', :dox do
        expect(response).to have_http_status(:unauthorized)
      end
    end

    context 'when 403' do
      let(:another_user) { create(:user) }
      let(:project) { create(:project, user_id: another_user.id) }

      it 'returns status code 403', :dox do
        expect(status).to eq(403)
      end
    end

    context 'when 404' do
      let(:id) { 0 }

      it 'returns status code 404', :dox do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'POST /projects/:id/tasks/:id/toggle_status' do
    include Docs::V1::Tasks::Toggle_status

    before do
      post "/api/projects/#{project_id}/tasks/#{id}/toggle_status", params: {}, headers: headers
    end

    it 'returns success', :dox do
      expect(response).to have_http_status(:ok)
      expect(Task.first.done).to be true
    end
  end

  describe 'PATCH /projects/:id/tasks/sort' do
    include Docs::V1::Tasks::Sort

    before { patch "/api/projects/#{project_id}/tasks/sort", params: {}, headers: headers }

    it 'returns status code 200', :dox do
      expect(response).to have_http_status(:ok)
    end
  end
end
