class CreateRaterings < ActiveRecord::Migration
  def change
    create_table :raterings do |t|
      t.references :rating, index: true

      t.references :rateable, polymorphic: true, index: true
      t.timestamps null: false
    end
    add_foreign_key :raterings, :ratings
  end
end
