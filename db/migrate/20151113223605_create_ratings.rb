class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.column :severity, :integer
      t.timestamps null: false
    end
  end
end
