class CreateProyects < ActiveRecord::Migration
  def change
    create_table :proyects do |t|
      t.references :campaignName, index: true
      t.references :brandName, index: true
      t.references :country, index: true
      t.references :nameEmployee, index: true
      t.references :nameActivity, index: true
      t.references :typeActivity, index: true
      t.references :note, index: true
      t.references :dateActivity, index: true
      t.references :endDateActivity, index: true
      t.references :totalActivity, index: true

      t.timestamps null: false
    end
  end
end
