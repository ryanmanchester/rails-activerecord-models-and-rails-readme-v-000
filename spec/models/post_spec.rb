require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'can be created' do
    post = Post.create!(title: "My title", description: "The post description")
    expect(post).to be_valid
  end

  it 'has a summary' do
    post = Post.create!(title: "My title", description: "The post description")
    expect(post.post_summary).to eq("My title - The post description")
  end
end
