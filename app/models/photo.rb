class Photo < ApplicationRecord
	belongs_to :club
	has_attached_file :image, :styles => { :medium => "640x480#", 
                                         :thumb => "150x150#"}
    validates_attachment_content_type :image,
                                    content_type: /\Aimage\/.*\Z/
end
