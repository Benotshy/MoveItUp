module ApplicationHelper
  def age(dob)
    return nil if dob.nil?  # Handle the case where dob is nil

    now = Time.now.utc.to_date
    dob = dob.to_date if dob.respond_to?(:to_date)  # Convert to date if it's not already a date

    now.year - dob.year - (dob.change(year: now.year) > now ? 1 : 0)
  end
end
