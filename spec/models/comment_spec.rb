RSpec.describe Comment, type: :model do
  context 'with associations' do
    it { is_expected.to belong_to(:task) }
  end

  context 'with table columns' do
    it { is_expected.to have_db_column(:text).of_type(:text) }
    it { is_expected.to have_db_column(:file).of_type(:string) }
  end
end
