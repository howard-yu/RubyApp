class Bpook < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
end
