class Pix < ActiveRecord::Base
  attr_accessible :category, :description, :image, :name
  mount_uploader :image, ImgUploader
  belongs_to :Album
end
