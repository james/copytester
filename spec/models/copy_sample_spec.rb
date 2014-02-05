require 'spec_helper'

describe CopySample do
  it "should markup copy" do
    sample = CopySample.new(:copy => "# Test")
    sample.copy_markup.should == "<h1>Test</h1>\n"
  end
end
