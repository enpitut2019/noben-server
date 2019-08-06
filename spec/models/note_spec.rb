# coding: utf-8
require 'rails_helper'

RSpec.describe Note, type: :model do
  it "is valid with a subject_name" do
    note = Note.new(subject_name: "情報数学")
    expect(note).to be_valid
  end

   it "is invalid without a subject_name" do
    note = Note.new(subject_name: nil)
    expect(note.valid?).to eq(false)
  end
end
