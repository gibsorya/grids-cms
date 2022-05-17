require 'rails_helper'

RSpec.describe ContentTypePolicy, type: :policy do
    subject { described_class }
    let(:content_type) { create(:content_type) }
end