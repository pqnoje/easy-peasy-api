class Valuable < ApplicationRecord
	mount_uploader :images, AttachmentUploader # Tells rails to use this uploader for this model.   
	serialize :images, JSON # If you use SQLite, add this line.
	has_one :basket
end
