require 'rails_helper'

RSpec.describe ContentTypePolicy, type: :policy do
    subject { described_class }
    # let(:fields) { create_list(:field, 3) }
    # let(:content) { create(:content) }
    let(:content_type) { create(:content_type) }

    describe 'User' do
        context 'with admin role' do
            let(:user) { create(:user, role: :admin) }
            permissions :create? do
                it 'can create a new content type' do
                    expect(subject).to permit(user, ContentType.new)
                end
                it 'can create a new content type with fields' do
                end
            end
            permissions :update? do
                it 'can update an existing content type' do
                    expect(subject).to permit(user, content_type)
                end
            end
        end

        context 'with moderator role' do
            let(:user) { create(:user, role: :moderator) }
            permissions :create? do
                it 'cannot create a new content type' do
                    expect(subject).not_to permit(user, ContentType.new)
                end
            end
            permissions :update? do
                it 'can update an existing content type' do
                    expect(subject).to permit(user, content_type)
                end
            end
        end

        context 'with user role' do
            let(:user) { create(:user) }
            permissions :create? do
                it 'cannot create a new content type' do
                    expect(subject).not_to permit(user, ContentType.new)
                end
            end
            permissions :update? do
                it 'cannot update an existing content type' do
                    expect(subject).not_to permit(user, content_type)
                end
            end
        end
    end
end