class Comment < ApplicationRecord
  belongs_to :task

  mount_uploader :file, FileUploader
end
