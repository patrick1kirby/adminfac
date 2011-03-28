require 'fastercsv'

class Location < ActiveRecord::Base

  def to_csv (params)
    query = params[:conditions]
    @locations = Location.find_by_sql("SELECT * FROM `locations` WHERE (" + query + ") ORDER BY locations.id desc LIMIT 10000");

    return csv_data = FasterCSV.generate do |csv|
      csv << [:name, :address, :locality, :region, :postcode, :tel, :fax, :category, :website, :latitude, :longitude]
      @locations.each do |location|
        csv << [
        location.name,
        location.address,
        location.locality,
        location.region,
        location.postcode,
        location.tel,
        location.fax,
        location.category,
        location.website,
        location.latitude,
        location.longitude
        ]
      end
    end

  end


end
