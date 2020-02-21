require "rails_helper"

describe UsersController do

  let(:user) { create(:user) }
  
  describe "#show" do

    context 'log in' do
      before do
        login user
      end

      it "renders the :show template" do
        get :show, params: { id: user }
        expect(response).to render_template :show
      end
    end

    context 'not log in' do
      it 'redirects to new_session_path' do
        get :show, params: { id: user }
        expect(response).to redirect_to new_user_session_path
      end
    end

  end

  describe "#deal" do

    context 'log in' do
      before do
        login user
      end

      it "renders the :deal template" do
        get :deal, params: { id: user }
        expect(response).to render_template :deal
      end
    end

    context 'not log in' do
      it 'redirects to new_session_path' do
        get :deal, params: { id: user }
        expect(response).to redirect_to new_user_session_path
      end
    end

  end
end