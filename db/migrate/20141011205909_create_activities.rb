class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :nameActivity
      t.string :typeActivity
      t.text :note
      t.datetime :dateActivity
      t.datetime :endDateActivity
      t.integer :totalTimeActivity

      t.timestamps null: false
    end
  end
end
