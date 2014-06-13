require 'rails_helper'

describe Article do
  before :each do
    @article = Article.new(
      title: "Awesome Article",
      body: "I am the very model of a modern major general..."
      )
  end
  it "is valid with a title and body" do
    expect(@article).to be_valid
  end
  # refactor next two to instead find error message
  it "is invalid without a title" do
    expect(Article.new(title: nil)).to_not be_valid
  end
  it "is invalid without a body" do
    expect(Article.new(body: nil)).to_not be_valid
  end
  it "returns the title as a string" do
    expect(@article.title).to be_a(String)
  end
  it "returns the body as string/text" do
    expect(@article.body).to be_a(String)
  end
end