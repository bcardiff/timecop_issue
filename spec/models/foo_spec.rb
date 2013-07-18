require 'spec_helper'

describe Foo do
  it "should mark with current time" do
    Timecop.freeze() do
      foo = Foo.new
      foo.mark!

      foo.reload
      foo.time_field.should eq(Time.zone.now)
    end
  end

  it "should mark with current time 2" do
    Timecop.freeze(Time.zone.now) do
      foo = Foo.new
      foo.mark!

      foo.reload
      foo.time_field.should eq(Time.zone.now)
    end
  end

  it "should mark with current time 3" do
    Timecop.freeze(Date.today) do
      foo = Foo.new
      foo.mark!

      foo.reload
      foo.time_field.should eq(Time.zone.now)
    end
  end

end
