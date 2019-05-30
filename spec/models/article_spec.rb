require 'rails_helper'

describe Article do
  it 'exists with title and body' do
    article = Article.create(title: "asf", body: "asdasdff")

    expect(article).to be_a(Article)
    expect(article.title).to eq("asf")
    expect(article.body).to eq("asdasdff")
  end
end
