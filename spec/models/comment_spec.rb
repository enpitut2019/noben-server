require 'rails_helper'

RSpec.describe Comment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  
  it "is valid with a content, and user_name" do
    @comment = Comment.new(
      id: 1,
      note_id: 1,
      user_name: "Bob",
      content: "This is a test-message.",
      created_at: "2019/8/6",
      updated_at: "2019/8/6"
    )
    expect(@comment).to be_valid
  end

  it "is invalid without a user_name" do
    @comment = Comment.new(user_name: nil)
    expect(@comment.valid?).to eq(false)
  end

  it "is invalid without a content" do
    @comment = Comment.new(content: nil)
    expect(@comment.valid?).to eq(false)
  end
end
