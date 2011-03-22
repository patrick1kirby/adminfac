AdminData::Config.set = {
  :is_allowed_to_view => lambda {|controller| return true if (Rails.env.development? || Rails.env.staging?) },
  :is_allowed_to_update => lambda {|controller| return true if (Rails.env.development? || Rails.env.staging?) },
}

