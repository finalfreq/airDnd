class Photo < ActiveRecord::Base

	has_attached_file :avatar, :styles => {
																					:large => "500x500>",
																					:medium => "300x300>",
																					:thumb => "270x175>"
																				}

	belongs_to :unit
	validates_attachment_content_type :avatar, :content_type => /\Aimage/

	def image(*args)
		avatar.url(*args)
	end

end
