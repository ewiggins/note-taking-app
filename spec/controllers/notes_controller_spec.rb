require "rails_helper"

describe NotesController do
  describe "#index" do
    subject { get :index }
    specify { should render_template(:index) }
  end

  describe "#new" do
    subject { get :new }
    specify { should render_template(:new)}
  end
end
