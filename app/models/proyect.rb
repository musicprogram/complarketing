class Proyect < ActiveRecord::Base
  belongs_to :campaignName
  belongs_to :brandName
  belongs_to :country
  belongs_to :nameEmployee
  belongs_to :nameActivity
  belongs_to :typeActivity
  belongs_to :note
  belongs_to :dateActivity
  belongs_to :endDateActivity
  belongs_to :totalActivity
end
