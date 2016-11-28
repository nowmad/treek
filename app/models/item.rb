class Item < ApplicationRecord
  validates :title, :description, presence: true


    has_attached_file :image, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>'
    }

    # Validate the attached image is image/jpg, image/png, etc
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

   acts_as_taggable # Alias for acts_as_taggable_on :tags

end
