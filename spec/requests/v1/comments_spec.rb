RSpec.describe 'Comments API', type: :request do
  include Docs::V1::Comments::Api

  include_context 'with user, project, task, task_id'
  include_context 'with headers'
  let!(:comments) { create_list(:comment, 3, task_id: task.id) }
  let(:id) { comments.first.id }

  describe 'GET /projects/:project.id/tasks/:task_id/comments' do
    include Docs::V1::Comments::Index

    before { get "/api/projects/#{project.id}/tasks/#{task_id}/comments", params: {}, headers: headers }

    context 'when task exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(:ok)
      end

      it 'returns all project tasks' do
        expect(json['data'].size).to eq(comments.size)
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
      let(:task_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'POST /projects/:project.id/tasks/:task_id/comments' do
    include Docs::V1::Comments::Create

    let(:valid_attributes) { { text: 'Visit Narnia' } }

    context 'when request attributes are valid' do
      before do
        post "/api/projects/#{project.id}/tasks/#{task_id}/comments", params: valid_attributes, headers: headers
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(:created)
      end
    end

    context 'when 401' do
      before { post "/api/projects/#{project.id}/tasks/#{task_id}/comments", params: {}, headers: invalid_headers }

      it 'returns status code 401' do
        expect(response).to have_http_status(:unauthorized)
      end
    end

    context 'when 403' do
      let(:another_user) { create(:user) }
      let(:project) { create(:project, user_id: another_user.id) }

      before { post "/api/projects/#{project.id}/tasks/#{task_id}/comments", params: {}, headers: headers }

      it 'returns status code 403' do
        expect(status).to eq(403)
      end
    end

    context 'when 404' do
      let(:task_id) { 0 }

      before { post "/api/projects/#{project.id}/tasks/#{task_id}/comments", params: {}, headers: headers }

      it 'returns status code 404' do
        expect(status).to eq(404)
      end
    end
  end

  describe 'PUT /projects/:project_id/tasks/task_id/comments/:id' do
    include Docs::V1::Comments::Update

    let(:valid_attributes) { { text: 'Mozart, where are your panties?' } }

    before do
      put "/api/projects/#{project.id}/tasks/#{task_id}/comments/#{id}", params: valid_attributes, headers: headers
    end

    context 'when comment exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(:no_content)
      end

      it 'updates the comment' do
        updated_comment = Comment.find(id)
        expect(updated_comment.text).to match(/Mozart/)
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

  describe 'DELETE /projects/:project.id/tasks/:task_id/comments/:id' do
    include Docs::V1::Comments::Destroy

    before { delete "/api/projects/#{project.id}/tasks/#{task_id}/comments/#{id}", params: {}, headers: headers }

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
end
