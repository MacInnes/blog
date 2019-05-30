require 'rails_helper'

describe 'a guest user' do
  context 'visits the home page' do
    it 'sees a list of articles' do
      article1 = Article.create(title: "asdf", body: "asdfkjhsdc")
      article2 = Article.create(title: "kjh", body: "fiuhsadchjsac")
      article3 = Article.create(title: "lkhkj", body: "asdfkjhsdc")

      visit '/'

      expect(page).to have_content(article1.title)
      expect(page).to have_content(article2.title)
      expect(page).to have_content(article3.title)

      expect(page).not_to have_content(article1.body)
      expect(page).not_to have_content(article2.body)
      expect(page).not_to have_content(article3.body)
    end
    it 'can click on a title to see the article' do
      article1 = Article.create(title: "asdf", body: "asdfkjhsdc")
      article2 = Article.create(title: "kjh", body: "sadfkjhasciu")
      article3 = Article.create(title: "lkhkj", body: "asdiuhcewkj ce")

      visit '/'

      click_on article1.title
      expect(current_path).to eq("/articles/#{article1.id}")
      expect(page).to have_content(article1.title)
      expect(page).to have_content(article1.body)
      expect(page).not_to have_content(article2.body)
    end

  end
end
