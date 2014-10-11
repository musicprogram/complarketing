class CreateUens < ActiveRecord::Migration
  def change
    create_table :uens do |t|
      t.string :region
      t.string :country

      t.timestamps null: false
    end
  end
end
