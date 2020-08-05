class Main < ApplicationRecord
  mount_uploader :file1, FileUploader
  mount_uploader :file2, FileUploader
  mount_uploader :file3, FileUploader
  mount_uploader :file4, FileUploader
   
  validates :title, presence: true
  validates :name, presence: true
  validates :text, presence: true
  
end
