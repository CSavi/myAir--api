class CreateListing < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
        t.string :name
        t.integer :price
        t.string :street
        t.integer :count
        t.string :city
        t.string :state
        t.string :postal_code
        t.text :description
        t.integer :host_id
        t.string :host
        t.string :img_url
    end
  end
end
