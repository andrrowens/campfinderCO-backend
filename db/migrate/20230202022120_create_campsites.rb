class CreateCampsites < ActiveRecord::Migration[7.0]
  def change
    create_table :campsites do |t|
      t.string :name
      t.string :region
      t.text :description
      t.integer :elevation
      t.integer :coordinates
      t.integer :campsite_id

      t.timestamps
    end
  end
end
