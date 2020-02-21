require 'rails_helper'

describe RoomsController do

  let(:user)     { create(:user) }
  let(:accept)   { create(:accept) }
  let(:requests) { user.requests }
  let(:room)     { requests.room }
  
  describe "#show" do

    context 'log in' do
      
      before do
        login user
      end

      it "renders the :show template" do
        get :show, params: { request_id: request, room_id: room }
        expect(response).to render_template :show
      end
    end

    context 'not log in' do

      it 'redirects to new_session_path' do
        get :show, params: { request_id: request, room_id: room }
        expect(response).to redirect_to new_user_session_path
      end
    end
  end
end