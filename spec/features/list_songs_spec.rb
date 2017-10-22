require 'rails_helper'

describe "Current user viewing the list of all songs of one artist" do

  it "shows all songs belonging to one artist" do
    visit url: [@artist, @artist.songs]

    expect(page).to have_text("Songs in database")
    expect(page).to have_text("Add a song:")

  end

end
