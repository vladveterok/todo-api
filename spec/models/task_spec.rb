RSpec.describe Task, type: :model do
  context 'with associations' do
    it { is_expected.to belong_to(:project) }
  end

  context 'with table columns' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:position).of_type(:integer) }
    it { is_expected.to have_db_column(:deadline).of_type(:datetime) }
    it { is_expected.to have_db_column(:done).of_type(:boolean) }
  end

  context 'with validations' do
    it { is_expected.to validate_inclusion_of(:done).in_array([true, false]) }
  end
end
