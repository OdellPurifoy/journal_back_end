# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Journal, type: :model do
  it { should have_db_column(:title).of_type(:string) }
  it { should have_db_column(:kind).of_type(:string) }
  it { should have_db_index([:user_id]) }

  describe 'Model Validations' do
    let(:journal) { FactoryBot.build_stubbed(:journal) }

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:kind) }
  end
end
