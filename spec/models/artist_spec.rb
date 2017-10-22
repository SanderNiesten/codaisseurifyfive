require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(250) }
    it { should validate_uniqueness_of(:name) }
  end

  describe "association with songs" do
    it { is_expected.to have_many :songs}
  end

#  or like this
#  describe "association with songs" do
#  let(:artist) { create :artist }

#  let(:song1) { create :song, name: "Arpeggios and weird fishes", artists: [artist] }
#  let(:song2) { create :song, name: "Clean lines", artists: [artist] }
#  let(:song2) { create :song, name: "A Man's Touch", artists: [artist] }
#
#  it "has songs" do
#    expect(artist.songs).to include(song1)
#    expect(artist.songs).to include(song2)
#    expect(artist.songs).to include(song3)
#  end

end
