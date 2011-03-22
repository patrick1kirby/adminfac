class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :uuid
      t.string :name
      t.string :address
      t.string :locality
      t.string :region
      t.string :postcode
      t.string :tel
      t.string :fax
      t.string :category
      t.string :website
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
