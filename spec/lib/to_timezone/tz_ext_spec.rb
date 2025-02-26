require "spec_helper"

RSpec.describe ToTimezone::TzExt do
  context "when using valid timezone" do
    it "returns datetime with coverted timezone" do
      timestamp = DateTime.parse("2025-02-07 07:00:00 +0800")

      expect(timestamp.to_utc.to_s).to eq("2025-02-06 23:00:00 UTC")
    end
  end

  context "when pass date is a string" do
    it "returns datetime with coverted timezone" do
      timestamp = "2025-02-07 07:00:00 +0800"

      expect(timestamp.to_utc.to_s).to eq("2025-02-06 23:00:00 UTC")
    end
  end
end
