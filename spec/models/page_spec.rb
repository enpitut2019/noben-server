# coding: utf-8
require 'rails_helper'

RSpec.describe Page, type: :model do
  before do
    @note = Note.new(
      subject_name: "情報数学"
    )
  end
    it "is valid with a order and image" do
    image_path = File.join(Rails.root, 'spec/fixtures/home.png')
    @page = @note.pages.new(
      order: 1,
      image: Rack::Test::UploadedFile.new(image_path)
    )
    pending 'この先はよくわからないので後で修正する'
    expect(@page).to be_valid
  end

  pending '同じ'
  it "is invalid without a order" do
    @page = @note.pages.new(order: nil)
    expect(@page.valid?).to eq(false)
  end
end
