class Resume < ApplicationRecord
  validates :content, presence: true

  belongs_to :user
  belongs_to :job

  mount_uploader :attachment, AttachmentUploader

  scope :recent, -> { order('created_at DESC') }
  
end
