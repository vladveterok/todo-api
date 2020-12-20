RSpec.describe Project, type: :model do
  context 'with associations' do
    it { is_expected.to have_many(:tasks).dependent(:destroy) }
    it { is_expected.to belong_to(:user) }
  end

  context 'with table columns' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
  end
end
