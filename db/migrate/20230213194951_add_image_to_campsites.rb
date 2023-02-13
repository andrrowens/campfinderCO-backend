class AddImageToCampsites < ActiveRecord::Migration[7.0]
  def change
    add_column :campsites, :image, :string
  end
end
