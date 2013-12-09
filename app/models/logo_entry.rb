class LogoEntry < ActiveRecord::Base

  attr_accessible :image, :comment

  has_attached_file :image,
    :styles => { :medium => "500x500>", :thumb => "100x100>" },
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  validates_attachment :image, :presence => true,
  :size => { :in => 0..3.megabytes }

  validates :image, dimensions: { width: 600, height: 600 }

  belongs_to :user

end
