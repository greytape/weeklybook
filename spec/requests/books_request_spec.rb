RSpec.describe "Books", type: :request do

  describe "GET /new" do
    xit "returns http success" do
      get "/books/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    xit "returns http success" do
      get "/books/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    xit "returns http success" do
      get "/books/show"
      expect(response).to have_http_status(:success)
    end
  end
end
