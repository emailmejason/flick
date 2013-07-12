class Album < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :pix
  belongs_to :user
end
