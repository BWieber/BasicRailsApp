class CreateSeverities < ActiveRecord::Migration
  def change
    create_table :severities do |t|
      t.references :rating, index: true

      t.references :severity, polymorphic: true, index: true
      t.timestamps null: false
    end
    add_foreign_key :severities, :ratings
  end
end
