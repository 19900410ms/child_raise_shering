require 'rails_helper'

describe RequestsController do

  let(:user)   { create(:user) }
  
  describe "#new" do

    context 'log in' do
      before do
        login user
      end

      it "renders the :new template" do
        get :new
        expect(response).to render_template :new
      end
    end

    context 'not log in' do
      it 'redirects to new_session_path' do
        get :new
        expect(response).to redirect_to new_user_session_path
      end
    end

  end

end