require 'spec_helper'

describe CopySample do
  it "should markup copy" do
    sample = CopySample.new(:copy => "# Test")
    sample.copy_markup.should == "<h1>Test</h1>\n"
  end
  it "should make an average of time taken" do
    sample = CopySample.create!(:copy => "# Test")
    sample.responses.create!(:time_taken => 10)
    sample.responses.create!(:time_taken => 20)
    sample.average_time_taken.should == 15
  end
  it "should make an average of trust rating" do
    sample = CopySample.create!(:copy => "# Test")
    sample.responses.create!(:trust_rating => 1)
    sample.responses.create!(:trust_rating => 3)
    sample.average_trust_rating.should == 2
  end
end
