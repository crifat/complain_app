class CreateComplains < ActiveRecord::Migration
  def change
    create_table :complains do |t|
      t.string :title
      t.text :description
      t.float :latitude
      t.float :longitude
      t.string :username
      t.string :image_url
      t.string :location
      t.string :ip_address

      t.timestamps
    end
  end
end
