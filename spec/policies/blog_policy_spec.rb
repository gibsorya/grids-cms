require 'rails_helper'

RSpec.describe BlogPolicy, type: :policy do
  subject { described_class }
  let(:blog) { create(:blog) }
  describe 'User' do
    context 'with admin role' do
      let(:user) { create(:user, role: :admin) }
      let(:blog) { create(:blog) }
      permissions :create? do
        it 'can create a new blog post' do
          expect(subject).to permit(user, Blog.new)
        end
      end
      permissions :update? do
        it 'can update an existing blog post' do
          expect(subject).to permit(user, blog)
        end
      end
      permissions :destroy? do
        it 'can destroy an existing blog post' do
          expect(subject).to permit(user, blog)
        end
      end
    end
    context 'with moderator role' do
      let(:user) { create(:user, role: :moderator) }
      permissions :create? do
        it 'cannot create a new blog post' do
          expect(subject).not_to permit(user, Blog.new)
        end
      end
      permissions :update? do
        it 'can update an existing blog post' do
          expect(subject).to permit(user, blog)
        end
      end
    end
    context 'with user role' do
      let(:user) { create(:user) }
      permissions :create? do
        it 'cannot create a new blog post' do
          expect(subject).not_to permit(user, Blog.new)
        end
      end
      permissions :update? do
        it 'cannot update an existing blog post' do
          expect(subject).not_to permit(user, blog)
        end
      end
    end
  end
end
