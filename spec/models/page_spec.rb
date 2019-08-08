# coding: utf-8
require 'rails_helper'
require 'carrierwave/test/matchers'

RSpec.describe Page, type: :model do
  before do
    @note = Note.new(
      subject_name: "情報数学"
    )
  end
    
  it "is invalid without a order" do
    @page = @note.pages.new(order: nil)
    expect(@page.valid?).to eq(false)
  end
end
