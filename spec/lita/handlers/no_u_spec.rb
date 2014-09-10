require "spec_helper"

describe Lita::Handlers::NoU, lita_handler: true do
  it {routes_command("no u").to(:no_u)}
  it {routes_command("u").to(:u)}
  it {routes_command("no thou").to(:no_thou)}
  it {routes_command("thou").to(:thou)}

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
  describe "#no_thou" do
    it "replies with 'no thou'" do
      send_command "no thou"
      expect(replies.first).to match "no thou"
    end
  end
  describe "#thou" do
    it "replies with 'thou'" do
      send_command "thou"
      expect(replies.first).to match "thou"
    end
  end
end
