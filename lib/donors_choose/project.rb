# This API allows us to find information about DonorsChoose projects,
# so a Project is the main class of the gem.
class DonorsChoose::Project

  # This method finds all projects near a given latitude and longitude.
  def self.near_me(latitude, longitude)
    DonorsChoose::Request.get(:centerLat => latitude, :centerLong => longitude)
  end

  # This method allows you to look up all projects by a zip code.
  def self.by_zip(zipcode)
    DonorsChoose::Request.get(:zip => zipcode)
  end

  # This method allows you to look up all projects by a state code (ex: "WA").
  def self.by_state(state)
    DonorsChoose::Request.get(:state => state)
  end

  def self.by_subject(sub_prefix_code, sub_code)
    DonorsChoose::Request.get("subject#{sub_prefix_code}" => sub_code)
  end
end
