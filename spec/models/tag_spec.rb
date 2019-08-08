# coding: utf-8
require 'rails_helper'

RSpec.describe Tag, type: :model do
  before do
    @note = Note.new(
      subject_name: "情報数学"
    )
  end
  
  it "is valid with a name" do
    @tag = @note.tags.new(
      name: "演習問題"
    )
    expect(@tag).to be_valid
  end
  
  it "is invalid without a name" do
    @tag = @note.tags.new(name: nil)
    expect(@tag.valid?).to eq(false)
  end
end
