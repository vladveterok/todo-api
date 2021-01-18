RSpec.describe Project, type: :model do
  context 'with associations' do
    it { is_expected.to have_many(:tasks).dependent(:destroy) }
    it { is_expected.to belong_to(:user) }
  end

  context 'with table columns' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
  end

  context 'with validations' do
    subject(:project) { FactoryBot.build(:project, :with_user) }

    it { is_expected.to validate_presence_of(:name) }

    it 'validates uniqueness of name' do
      expect(project).to validate_uniqueness_of(:name).scoped_to(:user_id)
                                                      .with_message(I18n.t('errors.projects.name_taken'))
    end
  end
end
