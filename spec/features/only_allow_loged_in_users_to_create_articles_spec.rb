RSpec.describe "User authentication for writing articles", type: feature do
  feature "user should be asked to log in" do
    let (:user) { FactoryBot.create (:user) }
    before do
      visit '/'
         end

    it "by loging in to the page" do
        fill_in 'Email', with: 'Sara@mail.com'
        fill_in 'Password', with: 'Sarasara'
        click_on 'Log in'
      expect(page).to have_content 'signed_in'
    end
  end
end


