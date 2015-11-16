require 'rails_helper'

RSpec.describe RatingsController, type: :controller do

  let(:my_rating) { Rating.create!(name: "R") }

  describe "GET #show" do
    it "returns http success" do
      get :show, { id: my_rating.id }
      expect(response).to have_http_status(:success)
    end

# #14
    it "renders the #show view" do
      get :show, { id: my_rating.id }
      expect(response).to render_template :show
    end

# #15
   it "assigns my_label to @label" do
     get :show, id: my_rating.id
     expect(assigns(:rating)).to eq(my_rating)
   end
  end

end
