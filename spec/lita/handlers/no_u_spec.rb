require "spec_helper"

describe Lita::Handlers::NoU, lita_handler: true do
  it {routes_command("no u").to(:no_u)}
  it {routes_command("u").to(:u)}

  describe "#no_u" do
    it "replies with 'no u'" do
      send_command "no u"
      expect(replies.first).to match "no u"
    end
  end

  describe "#u" do
    it "replies with 'u'" do
      send_command "u"
      expect(replies.first).to match "u"
    end
  end
end
