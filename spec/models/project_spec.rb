RSpec.describe Project, type: :model do
  context 'with associations' do
    it { is_expected.to have_many(:tasks).dependent(:destroy) }
    it { is_expected.to belong_to(:user) }
  end

  context 'with table columns' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
  end

  context 'with validations' do
    it { is_expected.to validate_presence_of(:created_by) }
  end
end
