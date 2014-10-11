class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :campaignName
      t.string :campaignCode
      t.boolean :status

      t.timestamps null: false
    end
  end
end
