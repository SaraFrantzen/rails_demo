RSpec.describe "User authentication required for accessing 'Write Article',", type: feature do
  feature "visitors should be able to see articles without logging in" do
    before do
      visit "/"
    end

    it "articles is visible on landing page" do
      expect(page).to have_content @article
    end

    it "Write Article link is still visible" do
      expect(page).to have_content "Write Article"
    end
  end

  feature "User should not be able to write articles without logging in" do
    before do
      visit "/"
      click_on "Write Article"
    end

    it "Write Article require login" do
      expect(page).to have_content "Log in"
    end
  end

  feature "new_article_path should not be accessable without user session" do
    before do
      visit "articles/new"
    end

    it "shount not be able to access Write Article by typing articles/new in the URL" do
      expect(page).to_not have_content "Write Article"
      expect(page).to have_content "Log in"
    end
  end
end
