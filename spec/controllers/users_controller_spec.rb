require "rails_helper"

describe UsersController do
  
  describe "GET #show" do
    it "renders the :show template" do
      user = create(:user)
      get :show, params: { id: user }
      expect(response).to render_template :show
    end
  end

end