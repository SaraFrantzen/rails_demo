RSpec.describe "User authentication required for accessing 'Write Article',", type: feature do
  feature "user should not be able to write articles without logging in" do
    before do
      visit "/"
    end

    it "Write Article link is not visible" do
      expect(page).to_not have_content "Write Article"
    end
  end

  feature "new_article_path should not be accessable without user session" do
    before do
      visit "articles/new"
    end

    it "shount not be able to access Write Article just by typing articles/new in the URL" do
      expect(page).to_not have_content "Write Article"
      expect(page).to have_content "Log in"
    end
  end
end
