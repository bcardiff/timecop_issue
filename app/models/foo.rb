class Foo < ActiveRecord::Base
  attr_accessible :time_field

  def mark!
    self.time_field = Time.zone.now
    self.save!
  end
end
