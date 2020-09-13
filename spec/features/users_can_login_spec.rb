RSpec.describe "User authentication", type: feature do
  feature "user should be asked to log in" do
    let (:user) { FactoryBot.create (:user) }

    before do
      visit "/"
      login_as(user, scope: :user)
    end

    it "by loging in to the page" do
      expect(user_session_url).to be_truthy
    end
  end
end
