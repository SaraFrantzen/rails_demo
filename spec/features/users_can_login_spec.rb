RSpec.describe "User authentication", type: feature do
  feature "user should be asked to log in" do
    let (:user) { FactoryBot.create (:user) }
    before do
      visit '/'
      fill_in 'Email', with: 'Sara@mail.com'
      fill_in 'Password', with: 'MyString'
      click_on 'Log in'
         end

    it "by loging in to the page" do
       expect(user_session_url).to be_truthy
    end
  end
end


