class Sale < ActiveRecord::Base
  def has_finished
    self.ends_on < Date.current
  end

  def has_started
    !(self.starts_on > Date.current)
  end
end
