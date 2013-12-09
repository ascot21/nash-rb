class LogoEntry < ActiveRecord::Base
  before_create :randomize_file_name

  attr_accessible :image, :comment

  has_attached_file :image,
    :styles => { :medium => "305x305#", :thumb => "100x100#" },
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :path => ":class/:attachment/:id_partition/:basename_:style.:extension"

  validates_attachment :image, :presence => true,
  :size => { :in => 0..3.megabytes }

  validates :image, dimensions: { width: 600, height: 600 }

  belongs_to :user

  private

  def randomize_file_name
    extension = File.extname(image_file_name).downcase
    self.image.instance_write(:file_name, "#{SecureRandom.hex(16)}#{extension}")
  end

end
