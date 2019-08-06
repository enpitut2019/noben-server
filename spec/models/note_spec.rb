# coding: utf-8
require 'rails_helper'

RSpec.describe Note, type: :model do
  it "is valid with a subject_name" do
    note = Note.new(subject_name: "情報数学")
    expect(note).to be_valid
  end
end
