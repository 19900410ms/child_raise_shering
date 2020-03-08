require 'rails_helper'

describe AcceptsController do

  let(:user)     { create(:user) }
  let(:accept)   { create(:accept) }

  describe "#show" do

    context 'log in' do
      before do
        login user
      end

      it "renders the :show template" do
        get :show, params: {id: accept}
        expect(response).to render_template :show
      end
    end

    context 'not log in' do
      it 'redirects to new_session_path' do
        get :show, params: {id: accept}
        expect(response).to redirect_to new_user_session_path
      end
    end

  end
  
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

  describe "#index" do

    context 'log in' do
      before do
        login user
      end

      it "renders the :index template" do
        get :index
        expect(response).to render_template :index
      end
    end

    context 'not log in' do
      it 'redirects to new_session_path' do
        get :index
        expect(response).to redirect_to new_user_session_path
      end
    end

  end

  describe "#search" do

    context 'log in' do
      before do
        login user
      end

      it "renders the :search template" do
        get :search
        expect(response).to render_template :search
      end
    end

    context 'not log in' do
      it 'redirects to new_session_path' do
        get :search
        expect(response).to redirect_to new_user_session_path
      end
    end

  end

  describe "#hide" do

    context 'log in' do
      before do
        login user
      end

      it "renders the :hide template" do
        get :hide, params: {id: accept}
        expect(response).to render_template :hide
      end
    end

    context 'not log in' do
      it 'redirects to new_session_path' do
        get :hide, params: {id: accept}
        expect(response).to redirect_to new_user_session_path
      end
    end

  end

  describe "#edit" do

    context 'log in' do
      before do
        login user
      end

      it "renders the :edit template" do
        get :edit, params: {id: accept}
        expect(response).to render_template :edit
      end
    end

    context 'not log in' do
      it 'redirects to new_session_path' do
        get :edit, params: {id: accept}
        expect(response).to redirect_to new_user_session_path
      end
    end

  end

end