require 'rails_helper'

RSpec.describe Note, type: :model do
  describe "notes behavior" do
    it "creates notes" do
     Note.create(title: "First Day Here", body: "It was great!")
     expect(Note.count).to eq(1)
    end
  end
end
