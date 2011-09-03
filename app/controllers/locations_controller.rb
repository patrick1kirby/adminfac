class LocationsController < ApplicationController

  active_scaffold :locations do |config|
    config.label = "Locations"
    config.columns = [:factual_id, :name, :address, :address_extended, :po_box, :locality, :region, :country, :postcode, :tel, :fax, :category, :website, :email, :latitude, :longitude, :status]
    config.columns[:name].search_sql = 'name'
    config.search.columns << :name


    list.columns.exclude :website, :fax
    list.sorting = {:name => 'ASC'}
    config.actions = [:nested, :list, :show, :field_search]

    #config.field_search.text_search = false

    config.actions.add :export
    config.export.columns = [ :name, :address, :locality, :region, :postcode, :tel, :fax, :category, :website, :latitude, :longitude ]
    config.export.default_deselected_columns = [ :website, :fax ]
    config.export.default_delimiter = ','
    config.export.force_quotes = true

  end

end
