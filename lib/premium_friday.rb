require "premium_friday/version"
require "date"

module PremiumFriday
  def premium_friday?
    (wday == 5) && (month != (self + 7).month)
  end
end

class Date
  include PremiumFriday
end
