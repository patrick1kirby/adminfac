require 'fastercsv'

class Location < ActiveRecord::Base

  def to_csv (params)
    query = params[:conditions]
    @locations = Location.find_by_sql("SELECT * FROM `locations` WHERE (" + query + ") ORDER BY locations.id desc LIMIT 10000");

    return csv_data = FasterCSV.generate do |csv|
      csv << [:factual_id, :name, :address, :address_extended, :po_box, :locality, :region, :country, :postcode, :tel, :fax, :category, :website, :email, :latitude, :longitude, :status]
      @locations.each do |location|
        csv << [
        location.factual_id,
        location.name,
        location.address,
        location.address_extended,
        location.po_box,
        location.locality,
        location.region,
        location.country,
        location.postcode,
        location.tel,
        location.fax,
        location.category,
        location.website,
        location.email,
        location.latitude,
        location.longitude,
        location.status
        ]
      end
    end

  end


end
