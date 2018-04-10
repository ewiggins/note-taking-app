require "rails_helper"

RSpec.describe NotesController do
  describe "#index" do
    subject { get :index }
    specify { should render_template(:index) }
  end

  describe "#new" do
    subject { get :new }
    specify { should render_template(:new)}
  end

  describe "notes behavior" do
    it "creates notes" do
      Note.create(title: "First Day Here", body: "It was great!")
      expect(Note.last.title).to eq("First Day Here")
    end

    it "destroys a notes" do
      note =  Note.create(title: "First Day Here", body: "It was great!")
      note.destroy
      expect(Note.find_by(title: "First Day Here")).to eq(nil)
    end
  end
end
