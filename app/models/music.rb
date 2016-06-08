class Music < ActiveRecord::Base
  has_many :likes
  has_many :users, through: :likes

  has_attached_file :song,
                    :storage => :dropbox,
                    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
                    :dropbox_visibility => 'public'
  # validates_attachment_content_type :song, content_type: /\Aimage\/.*\Z/

  validates_attachment_content_type :song, :content_type => /\Aaudio/


end
