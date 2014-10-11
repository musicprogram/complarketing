class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :nameEmployee
      t.string :jobDescription
      t.string :document
      t.string :email

      t.timestamps null: false
    end
  end
end
