require 'rails_helper'

describe RequestsController do

  let(:user) { create(:user) }
  
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

  describe "#edit" do

    context 'log in' do
      before do
        login user
      end

      let(:request) { create(:request) }

      it "renders the :edit template" do
        get :edit, params: {id: request}
        expect(response).to render_template :edit
      end
    end

    context 'not log in' do
      it 'redirects to new_session_path' do
        get :edit, params: {id: request}
        expect(response).to redirect_to new_user_session_path
      end
    end

  end

  describe "#reply" do

    context 'log in' do
      before do
        login user
      end

      let(:request) { create(:request) }

      it "renders the :reply template" do
        get :reply, params: {id: request}
        expect(response).to render_template :reply
      end
    end

    context 'not log in' do
      it 'redirects to new_session_path' do
        get :reply, params: {id: request}
        expect(response).to redirect_to new_user_session_path
      end
    end

  end

end