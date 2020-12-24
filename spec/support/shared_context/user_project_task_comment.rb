RSpec.shared_context 'with user, project, task, task_id' do
  let(:user) { create(:user) }
  let(:project) { create(:project, user_id: user.id) }
  let(:project_id) { project.id }
  let(:task) { create(:task, project_id: project.id) }
  let(:task_id) { task.id }
end

RSpec.shared_context 'with user params' do
  let(:password) { '1Password' }
  let(:email) { 'test@test.test' }
  let(:user_signup_params) { { email: email, password: password, password_confirmation: password } }
  let(:user_params) { { email: email, password: password } }
end

RSpec.shared_context 'with headers' do
  let(:headers) { valid_headers }
end
