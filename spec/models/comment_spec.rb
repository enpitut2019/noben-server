# coding: utf-8
require 'rails_helper'

RSpec.describe Comment, type: :model do 
  
  before do
    @note = Note.new(
      subject_name: "情報数学"
    )
  end

  it "is valid with a content, and user_name" do
    @comment = @note.comments.new(
      user_name: "Bob",
      content: "This is a test-message."
    )
    expect(@comment).to be_valid
  end

  it "is invalid without a user_name" do
    @comment = @note.comments.new(user_name: nil, content: "hoge")
    expect(@comment.valid?).to eq(false)
  end
  
  it "is invalid without a content" do
    @comment = @note.comments.new(user_name: "hoge", content: nil)
    expect(@comment.valid?).to eq(false) 
  end
end
