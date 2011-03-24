# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  ActiveScaffold.set_defaults do |conf|
    conf.ignore_columns.add [:created_at, :updated_at, :lock_version]
    #config.list.results_per_page = 100
    #conf.actions.exclude :search
    #conf.actions.add :advanced_search
  end
end
