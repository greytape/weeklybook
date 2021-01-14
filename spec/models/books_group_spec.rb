require 'rails_helper'

RSpec.describe BooksGroup, type: :model do
  describe 'Associations' do
    it { is_expected.to belong_to(:group) }
    it { is_expected.to belong_to(:book) }
  end
end
