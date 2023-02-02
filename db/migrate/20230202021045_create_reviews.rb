class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :campsite
      t.string :title
      t.integer :date
      t.string :content
      t.string :image
      t.belongs_to :campsite
      t.belongs_to :user

      t.timestamps
    end
  end
end
