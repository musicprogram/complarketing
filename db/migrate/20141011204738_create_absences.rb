class CreateAbsences < ActiveRecord::Migration
  def change
    create_table :absences do |t|
      t.string :absenceType
      t.boolean :permision
      t.datetime :startTime
      t.datetime :endTime
      t.integer :total

      t.timestamps null: false
    end
  end
end
