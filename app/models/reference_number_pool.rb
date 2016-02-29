class ReferenceNumberPool < ActiveRecord::Base
  validates :reference, presence: true

  def self.next_reference!
    first_today = "DM#{Date.today.in_time_zone.strftime('%y%m%d')}000"
    most_recent = self.maximum("reference")

    next_reference = [first_today, most_recent].compact.max.next
    self.create!(reference: next_reference)

    next_reference
  end
end
