AdminData.config do |config|
  config.is_allowed_to_view = lambda {|controller| return true if (Rails.env.development? || Rails.env.staging?) }
  config.is_allowed_to_update = lambda {|controller| return true if (Rails.env.development? || Rails.env.staging?) }
end