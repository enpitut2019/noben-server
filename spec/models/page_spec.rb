# coding: utf-8
require 'rails_helper'

RSpec.describe Page, type: :model do
  before do
    @note = Note.new(
      id: 1,
      subject_name: "情報数学"
    )
  end

  it "is valid with a order and image" do
    @page = @note.pages.new(
      order: 1
    )
    expect(@page).to be_valid
  end

  it "is invalid without a order" do
    @page = @note.pages.new(order: nil)
    expect(@page.valid?).to eq(false)
  end
end
