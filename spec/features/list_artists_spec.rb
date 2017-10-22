require 'rails_helper'

describe "Current user viewing the list of all artists" do

  it "shows all artists" do
    visit artists_path

    expect(page).to have_text("Codaisseurify")
    expect(page).to have_text("New artist")

  end

end
