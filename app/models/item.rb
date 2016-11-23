class Item < ApplicationRecord
  validates :title, :description, presence: true

  has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "default.png",
                    :storage => :dropbox,
                    :dropbox_credentials => Rails.root.join("config/dropbox.yml")

   validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

   acts_as_taggable # Alias for acts_as_taggable_on :tags

end
