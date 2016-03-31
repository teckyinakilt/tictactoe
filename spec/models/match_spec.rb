require "spec_helper"

RSpec.describe Match, :type => :model do
  it "has default current_player of player_x" do
    match = Match.create!
    expect(post.current_player).to eq("player_x")
  end
end
