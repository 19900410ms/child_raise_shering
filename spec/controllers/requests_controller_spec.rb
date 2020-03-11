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

  describe '#create' do

    let(:accept) { create(:accept) }

    context 'log in' do
      before do
        login user
      end

      context 'can save' do
        let(:params) { { user_id: user.id, accept_id: accept.id, request: attributes_for(:request) } }
        subject {
          post :create,
          params: params
        }
        it 'count up request' do
          expect{subject}.to change(Request, :count).by(1)
        end
      end

      context 'can not save' do
        let(:invalid_params) { { user_id: user.id, accept_id: accept.id, request: attributes_for(:request, date: nil) } }
        subject {
          post :create,
          params: invalid_params
        }
        it 'does not count up request' do
          expect{subject}.not_to change(Request, :count)
        end
      end
    end

    context 'not log in' do
      let(:params) { { user_id: user.id, accept_id: accept.id, request: attributes_for(:request) } }
      it 'redirects to new_session_path' do
        post :create, params: params
        expect(response).to redirect_to new_user_session_path
      end
    end
    
  end

  describe "#destroy" do

    let(:request) { create(:request) }

    context 'log in' do
      before do
        login user
      end

      context 'can delete' do
        it 'can delete' do
          delete :destroy, params: {id: request}
          expect(response.status).to eq 302
        end
      end
      
    end
  end

end